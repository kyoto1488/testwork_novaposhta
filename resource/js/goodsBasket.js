import Basket from './classes/Basket';

export const GOODS_BASKET_TYPE = 'goods';
const basket = new Basket(window.localStorage, 'magazine');

if (!basket.hasType(GOODS_BASKET_TYPE)) {
    basket.addType(GOODS_BASKET_TYPE);
}

export default basket;
