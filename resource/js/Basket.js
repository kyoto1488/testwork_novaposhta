import {filter} from 'lodash-es';

export default class Basket {
    /**
     * Constructor
     * @param storage
     * @param prefix
     */
    constructor(storage = window.localStorage, prefix = 'basket') {
        this.prefix = prefix;
        this.storage = storage;
        this.keyStorage = this.prefix + '_' + 'basket';

        if (!this.hasBasket()) {
            this.createBasket();
        }
    }

    /**
     * @param type
     * @param data
     */
    addItem(type, data) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        const storageData = this.getStorageData();
        storageData[type].push(data);
        this.setStorageData(storageData);
    }

    /**
     * @param type
     * @param key
     * @param id
     */
    getItem(type, key, id) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        if (!this.hasItem(type, key, id)) {
            throw new Error('Item is not exists');
        }
        const storageData = this.getStorageData();
        const typeArray = storageData[type];

        for (let item of typeArray) {
            if (item[key] === id) {
                return item;
            }
        }
    }

    /**
     * @param type
     * @param key
     * @param id
     * @param data
     */
    updateItem(type, key, id, data) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        if (!this.hasItem(type, key, id)) {
            throw new Error('Item is not exists');
        }
        const storageData = this.getStorageData();
        const typeArray = storageData[type];

        for (let i = 0; i < typeArray.length; ++i) {
            if (typeArray[i][key] === id) {
                typeArray[i] = data;
            }
        }
        storageData[type] = typeArray;
        this.setStorageData(storageData);
    }

    /**
     * @param type
     * @param key
     * @param id
     * @returns {boolean}
     */
    hasItem(type, key, id) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        const storagetData = this.getStorageData();

        for (let item of storagetData[type]) {
            if (item[key] === id)
                return true;
        }
        return false;
    }

    /**
     * @param type
     */
    addType(type) {
        if (this.hasType(type)) {
            throw new Error('Type is already exists');
        }
        const storageData = this.getStorageData();
        storageData[type] = [];
        this.setStorageData(storageData);
    }

    /**
     * @param type
     * @returns {boolean}
     */
    hasType(type) {
        return Boolean(this.getStorageData()[type])
    }

    /**
     * @param type
     */
    deleteType(type) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        const storageData = this.getStorageData();
        const newStorageData = {};

        for (let _type in storageData) {
            if (_type != type) {
                newStorageData[_type] = storageData[_type];
            }
        }
        this.setStorageData(newStorageData);
    }

    /**
     * @param type
     * @returns {*}
     */
    countItems(type) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        const storageData = this.getStorageData();
        return storageData[type].length;
    }

    /**
     * @param type
     * @returns {*}
     */
    getDataFromType(type) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        return this.getStorageData()[type];
    }

    /**
     * @param type
     * @param key
     * @param id
     */
    deleteItem(type, key, id) {
        if (!this.hasType(type)) {
            throw new Error('Type is not exists');
        }
        if (!this.hasItem(type, key, id)) {
            throw new Error('Item is not exists');
        }
        const storageData = this.getStorageData();
        const typeArray = storageData[type];
        const filteredArray = filter(typeArray, item => item[key] !== id);
        storageData[type] = filteredArray;
        this.setStorageData(storageData);
    }

    /**
     * @returns {any}
     */
    getStorageData() {
        return JSON.parse(this.storage.getItem(this.keyStorage));
    }

    /**
     * @param data
     */
    setStorageData(data) {
        this.storage.setItem(this.keyStorage, JSON.stringify(data));
    }

    hasBasket() {
        return Boolean(this.storage.getItem(this.keyStorage));
    }

    createBasket() {
        this.storage.setItem(this.keyStorage, '{}');
    }
}
