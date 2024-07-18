Feature: f1

  Scenario: s1

    * def initialJson =
"""
{
    "customerList": [
        {
            "customerConditionHeader": {
                "entityType": "#(getDIRResponse.entityTypes[0])",
                "country": "#(getDIRResponse.countryCodes[0])",
                "entityRole": "CUSTOMER"
            }
        }
    ]
}
"""

    * def dynamicJson =
"""
{
  "customer": {
    "businessProfile": {
      "custLegalName": ""
    }
  }
}
"""
    * print initialJson.customerList[0]
    * print dynamicJson.customer
    * def some =
    """
    {
"key1":{
"inner": "value"
}
    }
    """
    * set initialJson.customerList[0] = karate.merge(initialJson.customerList[0], dynamicJson.customer)
# karate.set is very powerful
#  https://stackoverflow.com/questions/78759297/transforming-api-payload-into-nested-json-structure/78759400#78759400
    * print initialJson