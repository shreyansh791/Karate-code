Feature: feature1
  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  Scenario: create a user and then get it by id
    * def user1 =
      """
      {
        "name": "Test User1234567",
        "username": "testuser",
        "email": "test@user.com",
        "address": {
          "street": "Has No Name",
          "suite": "Apt. 123",
          "city": "Electri",
          "zipcode": "54321-6789"
        }
      }
      """

    Given url 'https://jsonplaceholder.typicode.com/users'
    And request user1
    When method post
    Then status 201

    * def id = response.id
    * print 'created id is: ', id