Feature: f1

  Scenario: s1

    * def finalResponse = []
    * def fun =
    """
    function(object)
    {
    for (var i=0; i<object.length;i++) {
var data = [{'language':'JS'},{'framework':'karate'}]
object[i].optionTranslationListItems = data
finalResponse[i]=object[i]
    }
    return finalResponse
    }
    """
    * def jsonReq =
    """
   [
  {
  "id": 1,
  "optionValue": "value1",
  "optionCode": "code1",
  "optionNumber": 1,
  "status": "ACTIVE"
  },
  {
  "id": 2,
  "optionValue": "value2",
  "optionCode": "code2",
  "optionNumber": 2,
  "status": "ACTIVE"
  }
  ]
    """

    * def value = fun(jsonReq)
    And print value