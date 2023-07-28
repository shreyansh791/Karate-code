Feature:

  Scenario:

    * def responseContents =
    """
    [
  {
    "datapointRule": {
      "textContentValidationRules": [
        {
          "ruleDescription": "CUST_WEBSITE | [FOR_ALL] | 1-50 Char |ALPHANUMERIC",
          "ruleName": "FormatValidation123",
          "priority": 0,
          "fieldType": "ALPHANUMERIC",
          "lengthType": "Min-Max",
          "minMax": {
            "min": 1,
            "max": 50
          },
          "characterSet": "",
          "regex": "",
          "errorCode": {
            "errorCode": "VSERRTCR1853",
            "locale": "en",
            "errorMessage": "Sorry, maximum 50 characters allowed",
            "helpText": ""
          },
          "swiftCode": {
            "exactMatch": false
          },
          "fieldContent": {
            "beginsWith": false,
            "equals": false,
            "contains": false
          }
        },
        {
          "ruleDescription": "CUST_WEBSITE | [FOR_ALL] | Format Validation | ALPHANUMERIC",
          "ruleName": "FormatValidation",
          "priority": 0,
          "fieldType": "ALPHANUMERIC",
          "minMax": {
          },
          "characterSet": "",
          "regex": "^(www.)[a-zA-Z0-9@:%._\\+~#?&//=]{2,256}\\.[a-z]{2,6}\\b([-a-zA-Z0-9@:%._\\+~#?&//=]*)$",
          "errorCode": {
            "errorCode": "VSERRTCR1854",
            "locale": "en",
            "errorMessage": "Please enter a valid url (e.g., www.example.com)",
            "helpText": ""
          },
          "swiftCode": {
            "exactMatch": false
          },
          "fieldContent": {
            "beginsWith": false,
            "equals": false,
            "contains": false
          }
        }
      ]
    }
  }
]
    """
* def filterRule = 'FormatValidation'
 * def check =  karate.jsonPath(responseContents, "$[0].datapointRule.textContentValidationRules[?(@.ruleName == '" + filterRule + "')]")