export default ({id, pic, title, description, price, quantity, maxQuantity}) => `
<div id="basket-item-${id}" class="item">
            <div class="left-side">
                <img alt="${title}" src="${pic}" class="pic">
            </div>
            <div class="right-side">
                <h5 class="title">
                    ${title}
                </h5>
                <p>
                    ${description}
                </p>
                <h6 class="price">
                    ${price}$
                </h6>
                <div>
                    Количество <input id="input-count"  onchange="window.onChangeQuantityBasketItem(${id}, this.value)" type="number" min="1" value="${quantity}" max="${maxQuantity}">
                </div>
                <button type="button" id="button-remove" onclick="window.onDeleteBasketItem(${id}, '#basket-item-${id}')">Удалить</button>
            </div>
        </div>`;
