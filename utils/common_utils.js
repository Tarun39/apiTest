
import { object, rest } from 'underscore'
import { api_url } from '../variables/variables.js'



// function to parse data passed as a table in steps
export function readTable(data = {}) {
    return object(rest(data.rawTable || []));
}


/**
 * 
 * @param {*} req_type is passed from feature file like -get,post,delete,put
 * @param {*} table_data 
This function is also reading data from json file the filename is also passing from feature file under "resp_data"
 */
export function requestValidator(req_type, table_data) {
    const data = readTable(table_data);
    cy.request({ method: req_type, url: `${api_url}/${data.uri}`, failOnStatusCode: false, body: data.req_body = {} })
        .then((resp) => {
            expect(resp.status).to.eq(parseInt(data.status_code));
            expect(resp).to.have.property('headers');

            if (data.resp_data) {
                cy.fixture(data.resp_data).then((expectedBody) => {
                    expect(resp.body).to.deep.eq(expectedBody)
                })

            }

        })


}
