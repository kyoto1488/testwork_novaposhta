import $ from 'jquery';

export const uriFetchByIds = '/api/fetch';
export const API_KEY_NOVAPOSHTA = '307ad67638fe3f3456bc9a4c27124001';


/**
 *
 * @param ids
 * @returns {*|jQuery|{getAllResponseHeaders, abort, setRequestHeader, readyState, getResponseHeader, overrideMimeType, statusCode}}
 */
export const getFetchByIds = ids =>
    $.get({
        url: uriFetchByIds,
        data: {
            ids
        }
    });

/**
 * @param city
 * @returns {*}
 */
export const getCity = (find) =>
    $.get('/api/novaposhta/street', {
        find
    });
