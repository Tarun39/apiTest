import { requestValidator } from '../../../../utils/common_utils'

Given('I initiate a {string} request with the following data', (req_type,table_data) => {
	requestValidator(req_type,table_data)
});