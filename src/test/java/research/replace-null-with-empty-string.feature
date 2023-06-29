Feature: replace null with empty string

  Scenario: replace null with empty string scenario
    * def jsonArray =
    """
  [
  {
  "address01": "address1",
  "address02": "address2",
  "address03": null
  },
  {
  "address01": "address1",
  "address02": null,
  "address03": null
  }
  ]
    """

    * def fun =
    """
    function(jsonArrayData)
    {
karate.forEach(jsonArrayData,function(k, v) { if (!v) jsonArrayData[k] = '' });
 return jsonArrayData
    }
    """
     * def temp =  karate.map(jsonArray,fun)
      * print temp