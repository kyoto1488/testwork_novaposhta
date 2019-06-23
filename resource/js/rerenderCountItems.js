export default ($badge, basket, type) => {
    $badge.text(basket.countItems(type));
};
