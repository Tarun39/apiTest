Feature: API test to validate the Article list

  This feature file is to test Rest API

  Scenario: To validate a article list for GET Request
    Given I initiate a "GET" request with the following data
      | key         | value    |
      | uri         | articles |
      | status_code | 200      |
      | resp_data   | article  |


  Scenario: To validate a article list for POST Request
    Given I initiate a "POST" request with the following data
      | key         | value                                                       |
      | uri         | articles                                                    |
      | req_body    | { id: "6",title: "Test",createAt: "2022-04-03T02:46:16.76"} |
      | status_code | 404                                                         |


  Scenario: To validate a article list for PUT Request
    Given I initiate a "PUT" request with the following data
      | key         | value                                               |
      | uri         | articles/5                                          |
      | req_body    | { title: "Test",createAt: "2022-04-03T02:46:16.76"} |
      | status_code | 404                                                 |


  Scenario: To validate a article list for DELETE Request
    Given I initiate a "DELETE" request with the following data
      | key         | value      |
      | uri         | articles/5 |
      | status_code | 404        |