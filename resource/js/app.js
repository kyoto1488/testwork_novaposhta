import $ from 'jquery';
import basket, {GOODS_BASKET_TYPE} from './goodsBasket';
import basketGoodsItemTemplate from './templates/basket-item';
import {getFetchByIds, getCity} from './api';
import {trim, filter, reduce} from 'lodash-es';
import '../scss/app.scss';

const rerenderCountBasketItems = () => {
    const $badge = $('#count-basket-items');
    $badge.text(basket.countItems(GOODS_BASKET_TYPE));
};
rerenderCountBasketItems();

$('[data-action="toggle-text-button-basket-item"]').click(function() {
    const $this = $(this);
    const id = parseInt($this.attr('data-id'));
    const price = parseFloat($this.attr('data-price'));
    const quantity = parseInt($this.attr('data-quantity'));

    if (basket.hasItem(GOODS_BASKET_TYPE, 'id', id)) {
        basket.deleteItem(GOODS_BASKET_TYPE, 'id', id);
        $this.text('Добавить в корзину');
    } else {
        basket.addItem(GOODS_BASKET_TYPE, {
            id,
            price,
            quantity
        });
        $this.text('Удалить из корзины');
    }
    rerenderCountBasketItems();
});
$('[data-action="toggle-text-button-basket-item"]').each(function() {
    const $this = $(this);
    const id = parseInt($this.attr('data-id'));
    $this.text(
        basket.hasItem(GOODS_BASKET_TYPE, 'id', id) ? 'Удалить из корзины' : 'Добавить в корзину'
    );
});

if ($('#rootBasketList').get(0)) {
    const $rootEl = $('#rootBasketList');
    const list = basket.getDataFromType(GOODS_BASKET_TYPE);

    let ids = reduce(list, (sum, n) => {
        return sum + ',' + n.id;
    }, '');
    ids = trim(ids, ',');

    getFetchByIds(ids).done(function (json) {
        const data = $.parseJSON(json);
        let html = '';

        for (let item of data) {
            const basketItem = basket.getItem(GOODS_BASKET_TYPE, 'id', item.id);
            item.maxQuantity = item.quantity;
            item.quantity = basketItem.quantity;
            html += basketGoodsItemTemplate(item);
        }
        window.onChangeQuantityBasketItem = (id, val) => {
            basket.updateItem(GOODS_BASKET_TYPE, 'id', id, {
                quantity: parseInt(val)
            });
        };
        window.onDeleteBasketItem = (id, elem) => {
            $(elem).remove();
            basket.deleteItem(GOODS_BASKET_TYPE, 'id', id);
        };
        $rootEl.html(html);
    });
}

if ($('#form-create-order').get(0)) {
    const $form = $('#form-create-order');
    const $submit = $form.find('button[type="submit"]');
    const $totalPrice = $form.find('#total-price');
    const $cityInput = $form.find('#search-city');
    const $departmentInput = $form.find('#search-department');
    const $selectDepartment = $form.find('select[name="department"]:eq(0)');
    let departments = [];

    const $snapshotBasket = $form.find('input[name="basket_snapshot"]:eq(0)');
    $snapshotBasket.val(
        JSON.stringify(basket.getDataFromType(GOODS_BASKET_TYPE))
    );

    const allItems = basket.getDataFromType(GOODS_BASKET_TYPE);
    const totalPrice = reduce(allItems, (sum, n) => {
        return sum + (n.quantity * n.price);
    }, 0);
    $totalPrice.text(totalPrice);

    $selectDepartment.hide();
    const getOptionsForDepartmentsSelect = (deps) => {
        let acum = '<option selected value="none">Не выбран</option>';
        for (let dep of deps) {
            acum += `
            <option value="${dep.CityDescriptionRu}_${dep.Number}">${dep.DescriptionRu}</option>
            `;
        }
        return acum;
    };
    $departmentInput.keyup(function() {
        const $this = $(this);
        if ($this.val().trim().length > 0) {
            const filteredData = filter(departments, dep => {
                return parseInt(dep.Number) === parseInt($this.val().trim())
            });
            if (filteredData.length > 0) {
                $selectDepartment.html(
                    getOptionsForDepartmentsSelect(filteredData)
                );
                $selectDepartment.show();
            }
        } else {
            $selectDepartment.html(
                getOptionsForDepartmentsSelect(departments)
            );
            $selectDepartment.show();
        }
    });
    $cityInput.keyup(function() {
        const $this = $(this);
        if ($this.val().trim().length > 0) {
            getCity($this.val())
                .done(json => {
                    const {success, data} = JSON.parse(json);
                    departments = data;
                    if (departments.length > 0) {
                        $selectDepartment.html(
                            getOptionsForDepartmentsSelect(departments)
                        );
                        $selectDepartment.show();
                    }
                })
        } else {
            $selectDepartment.hide();
        }
    });
    $form.submit(() => {
        basket.clearType(GOODS_BASKET_TYPE);
    });
}
