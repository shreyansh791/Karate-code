Feature: f1

  Scenario: s1

    * def numbers = [1,2,3,4,5,6,7,8,9,10]

    * def filteredResponse = numbers.filter( (num) => num > 4)

    * print "filteredResponse ", filteredResponse


  Scenario: s2

    * def numbers = [1,2,3,4,5,6,7,8,9,10]

    * def filteredResponse = numbers.filter( (num) => {return num > 4})

    * print "filteredResponse ", filteredResponse

    Scenario: s3
      * def jsonArray =
      """
      [
	{
		"locale": "en",
		"value": "Aruba"
	},
	{
		"locale": "en-gb",
		"value": ""
	},
	{
		"locale": "fr-fr",
		"value": ""
	}
]
      """

      * def filteredResponse = jsonArray.filter((obj) => obj.locale == 'fr-fr')
      * print "filteredResponse ", filteredResponse

  Scenario: js map basics
    * def jsonArray =
      """
      [
	{
		"locale": "en",
		"value": "Aruba"
	},
	{
		"locale": "en-gb",
		"value": ""
	},
	{
		"locale": "fr-fr",
		"value": ""
	}
]
      """

#    using js map
    * def mappedResponse = jsonArray.map((item) => ({ language: item.locale, updatedValue: item.value }))
    * print "mappedResponse ", mappedResponse

#    using karate map
    * def mapFun =
    """
    function(obj)
    {
 return{ language:obj.locale, updatedValue:obj.value}
    }
    """
    * def res = karate.map(jsonArray,mapFun)
    * print "mappedResponse ", res


