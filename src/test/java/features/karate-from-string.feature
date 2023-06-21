Feature: karate-from-string feature

  Scenario: karate-from-string scenario
    * def response =
"""
{
  "results":[
    {
      "id": "id-1",
      "data": "{\"name\": \"Adam\", \"surname\": \"Parker\"}"
    },
    {
      "id": "id-2",
      "data": "{\"name\": \"Adam\", \"surname\": \"Parker-Bates\"}"
    },
    {
      "id": "id-3",
      "data": "{\"name\": \"Adam Robert\", \"surname\": \"Parker\"}"
    }
  ]
}
"""

    * def names = response.results.map(x => karate.fromString(x.data))
  * print names
    * match names contains { name: 'Adam', surname: 'Parker' }


    Scenario: s2
* def response =
      """
    {
    "items": [
    {
    "vin": "MMTestingVIN00002",
    "dealerCode": "1",
    "nmscCode": "1",
    "warning": {
    "warningLightType": {
    "code": 1,
    "description": "",
    "symbol": "OLW",
    "type": "S",
    "priority": "1"
    }
    }
    },
    {
    "vin": "HESQM0IBWUR7DH0DU",
    "dealerCode": "1",
    "nmscCode": "1",
    "warning": {
    "warningLightType": {
    "code": 1,
    "description": "",
    "symbol": "OLW",
    "type": "S",
    "priority": "1"
    }
    }
    },
    {
    "vin": "MMTestingVIN00002",
    "dealerCode": "1",
    "nmscCode": "1",
    "warning": {
    "warningLightType": {
    "code": 1,
    "description": "",
    "symbol": "OLW",
    "type": "S",
    "priority": "1"
    }
    }
    },
    {
    "vin": "ZCADWKEQM1GEADEQR",
    "dealerCode": "1",
    "nmscCode": "1",
    "warning": {
    "warningLightType": {
    "code": 1,
    "description": "",
    "symbol": "WASH",
    "type": "S",
    "priority": "1"
    }
    }
    },
    {
    "vin": "H5QGE06R54B8KYOUV",
    "dealerCode": "1",
    "nmscCode": "1",
    "warning": {
    "warningLightType": {
    "code": 1,
    "description": "",
    "symbol": "WASH",
    "type": "S",
    "priority": "1"
    }
    }
    }
    ]
    }
      """

      * def indexes = []
      * def fun = function(x, i){ if (x.vin == 'MMTestingVIN00002') karate.appendTo(indexes, i) }
      * karate.forEach(response.items, fun)
      * print indexes

