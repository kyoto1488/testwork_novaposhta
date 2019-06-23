import $ from 'jquery';
import Basket from './Basket';
import rerenderButtonFavorite from './rerenderButtonToggleItem';
import rerenderCountItems from './rerenderCountItems';
import {getFetchByIds, getCity} from './api';
import {trim, filter, reduce} from 'lodash-es';
import '../scss/app.scss';
import templateItem from "./templateItem";

window.$ = window.jQuery = $;
window.BasketGoods = new Basket(window.localStorage, 'mybasket');
window.BasketGoodsType = 'GOODS';
const $buttonsToggleItem = $('[data-toggle="toggle-basket-item"]');
const $badgeCountItems = $('#count-items');
if (!window.BasketGoods.hasType(window.BasketGoodsType)) {
    window.BasketGoods.addType(window.BasketGoodsType);
}

rerenderButtonFavorite(
    $buttonsToggleItem,
    window.BasketGoods,
    window.BasketGoodsType
);
rerenderCountItems(
    $badgeCountItems,
    window.BasketGoods,
    window.BasketGoodsType
);

$buttonsToggleItem.click(function () {
    const $this = $(this);
    const id = parseInt($this.attr('data-id'));
    const price = parseFloat($this.attr('data-price'));

    if (window.BasketGoods.hasItem(window.BasketGoodsType, 'id', id)) {
        window.BasketGoods.deleteItem(window.BasketGoodsType, 'id', id);
    } else {
        window.BasketGoods.addItem(window.BasketGoodsType, {
            id,
            price,
            quantity: 1,
        })
    }
    rerenderButtonFavorite(
        $buttonsToggleItem,
        window.BasketGoods,
        window.BasketGoodsType
    );
    rerenderCountItems(
        $badgeCountItems,
        window.BasketGoods,
        window.BasketGoodsType
    );
});

if ($('#rootBasketList').get(0)) {
    const list = window.BasketGoods.getDataFromType(window.BasketGoodsType);
    let ids = '';

    for (let item of list) {
        ids += ',' + item.id;
    }
    ids = trim(ids, ',');
    getFetchByIds(ids).done(function (json) {
        const data = JSON.parse(json);
        $('#rootBasketList').html(
            templateItem(data)
        );
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
        JSON.stringify(window.BasketGoods.getDataFromType(window.BasketGoodsType))
    );

    const allItems = window.BasketGoods.getDataFromType(window.BasketGoodsType);
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
        }
    });
    $cityInput.keyup(function() {
        const $this = $(this);
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
    })
    $form.submit(() => {
        window.BasketGoods.deleteType(window.BasketGoodsType);
    });
}
