import $ from 'jquery';

window.onChangeQuantityItem = (elem) => {
    const $el = $(elem);
    const id = parseInt($el.attr('data-id'));
    const data = window.BasketGoods.getItem(window.BasketGoodsType, 'id', id);
    data.quantity = parseInt($el.val());
    window.BasketGoods.updateItem(window.BasketGoodsType, 'id', id, data);
};

export default list => {
    let wrapList = '';

    for (let data of list) {
        const basket = window.BasketGoods.getItem(window.BasketGoodsType, 'id', data.id);
        wrapList += `
        <div class="item">
            <div class="left-side">
                <img src="${data.pic}" alt="" class="pic">
            </div>
            <div class="right-side">
                <h5 class="title">
                    ${data.title}
                </h5>
                <p>${data.description}</p>
                <h6 class="price">
                ${data.price}$
</h6>
<div>
Количество <input data-id="${data.id}" onchange="window.onChangeQuantityItem(this)" type="number" min="1" value="${basket.quantity}" max="${data.quantity}">
</div>
            </div>
        </div>
        `;
    }

    return `
        <div class="items-container">
            ${wrapList}
        </div>
    `;
}
