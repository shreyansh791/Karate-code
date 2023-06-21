Feature: Feature

  Scenario: json-array

    * def emptyJsonReq =
  """
  {

  }
  """
    * print emptyJsonReq
    # below statement returns true
    * print JSON.stringify(emptyJsonReq) == '{}'
    # below match passes
    * match JSON.stringify(emptyJsonReq) == '{}'

#    Another way
    * match Object.keys(emptyJsonReq).length == 0
    * match Object.values(emptyJsonReq).length == 0
    * match Object.entries(emptyJsonReq).length == 0