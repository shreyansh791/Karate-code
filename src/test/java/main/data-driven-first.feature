Feature: data-driven feature

  Scenario Outline: Basic of data driven for <firstName>
    * def firstName = '<firstName>'
    * def id = <id>
    * def isManager = <isManager>

    * print firstName
    * print id
    * print isManager

    Examples:
      | firstName  | id  | isManager |
      | Shreyansh  | 100 | false     |
      | Raghvendra | 200 | true      |


  Scenario Outline: Basic of data driven - using JSON Payload
    * def jsonResponse =
    """
    {
    firstName: '<firstName>',
    id: <id>,
    isManager: <isManager>
    }
    """
    * print jsonResponse
    * print __row
    * print __num
    Examples:
      | firstName  | id! | isManager! |
      | Shreyansh  | 100 | false      |
      | Raghvendra | 200 | true       |


  Scenario Outline: Basic of data driven - using JSON Payload, remove null if passed
    * def jsonResponse =
    """
    {
    firstName: '##(firstName)',
    id: '##(id)',
    isManager: '##(isManager)'
    }
    """
    * print jsonResponse
    * print __row
    Examples:
      | firstName  | id! | isManager! |
      | Shreyansh  |     | false      |
      |            | 200 | true       |
      | Raghvendra | 200 |            |


  Scenario Outline: Basic of data driven - using JSON Payload, remove null if passed
    Then set jsonResponse
      | path      | values        |
      | firstName | '<firstName>' |
      | id        | <id>          |
      | isManager | <isManager>   |
    * print jsonResponse

    Examples:
      | firstName  | id  | isManager |
      | Shreyansh  | 100 | false     |
      |            | 200 | true      |
      | Raghvendra | 200 |           |


