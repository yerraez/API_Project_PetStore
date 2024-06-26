Feature: Manage sales of a pet store
  Background:
    * url "https://petstore.swagger.io/v2"
    * def orderBody = read("../../body/orderBody.json")
    * def successfulResponse = read("../../response/getOrderResponse.json")

  Scenario Outline: Get an order sales by id
    Given path "/store/order/<id>"
    When method GET
    Then status 200
    And match code contains "<code>"
    Examples:
      | id    | code |
      | 90    | 200  |

  Scenario Outline: Create an order sales
    * path "/store/order"
    * set orderBody.id = "<id>"
    * set orderBody.petId = "<petId>"
    * set orderBody.quantity = "<quantity>"
    * set orderBody.shipDate = "<shipDate>"
    * set orderBody.status = "<status>"
    * set orderBody.complete = "<complete>"

    Given request orderBody
    When method POST
    Then status 200
    Examples:
       | id       |petId  |quantity   |shipDate     |status   | complete |
       | 910      |8907   |3          |2024-06-26T05:32:45.536+0000 |placed   | true |

  Scenario Outline: Get a previous created order sales by id
    Given path "/store/order/<id>"
    When method GET
    Then status 200
    And match code contains "<code>"
    Examples:
      | id    | code |
      | 910   | 200  |

  Scenario: Verify sales inventory
    Given path "/store/inventory"
    When method GET
    Then status 200

  Scenario Outline: Delete a sales order
    Given path "store/order/<id>"
    When method DELETE
    Then status 200
    Examples:
      | id   |
      | 910  |