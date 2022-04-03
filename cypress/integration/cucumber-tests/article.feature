Feature: API Test to Validate the Single Aticle 

    This feature file is to test Rest API 

    Scenario: To validate a article endpoint for GET Request
        Given I initiate a "GET" request with the following data
            | key         | value         |
            | uri         | articles/2    |
            | status_code | 200           |
            | resp_data   | singleArticle |


    Scenario: To validate a article endpoint for PUT Request
        Given I initiate a "PUT" request with the following data
            | key         | value                                               |
            | uri         | articles/2                                          |
            | req_body    | { title: "Test",createAt: "2022-04-03T02:46:16.76"} |
            | status_code | 404                                                 |


    Scenario: To validate a article endpoint for DELETE Request
        Given I initiate a "DELETE" request with the following data
            | key         | value      |
            | uri         | articles/2 |
            | status_code | 404        |