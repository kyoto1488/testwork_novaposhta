import $ from "jquery";

export default (elements, basket, type) => {
    elements.each(function () {
        const $this = $(this);
        const id = parseInt($this.attr('data-id'));

        if (basket.hasItem(type, 'id', id)) {
            $this.html('Удалить из корзины');
        } else {
            $this.html('Добавить в корзину');
        }
    });
};
