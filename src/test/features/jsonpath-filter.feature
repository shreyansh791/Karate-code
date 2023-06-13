Feature: Json path Filter

  Scenario: Json path Scenario
    * def cat =
  """
  {
    name: 'Billie',
    kittens: [
      { id: 42, name: 'Wild' },
      { id: 23, name: 'Bob' }
    ]
  }
  """
    * def temp = karate.jsonPath(cat,"$.kittens[?(@.id== 23)]")
    And print "temp is ",temp


# find single kitten where id == 23
    * def bob = get[0] cat.kittens[?(@.id==23)]
    And print "bob is ",bob

    Scenario: usgae of karate filter
      * def json =
      """
      [
	{
		"id": "0a7936ed",
		"code": "test",
		"label": "test",
		"type": "sell"
	},
	{
		"id": "7bc1909b2",
		"code": "test2",
		"label": "test2",
		"type": "Buy"
	}
]
      """
      * def condition = function(x){ return x.code != 'test' }
      * def filtered = karate.filter(json, condition)
      And print "filter json is ",filtered
      * match filtered == [{ "id": "7bc1909b2", "code": "test2", "label": "test2", "type": "Buy" }]


  Scenario: jsonPath demo
    * def jsonRequest =
    """
    {
    "name": "Test",
    "description": "Test Desc",
    "data": [
    {
    "language": "French",
    "messageText": "Warning",
    "helpText": "helpText 1"
    },
    {
    "language": "German",
    "messageText": "Warning2",
    "helpText": "helpText 2"
    },
    {
    "language": "English",
    "messageText": "Warning3",
    "helpText": "helpText 3"
    }
    ]
    }
    """

    * def allLanguages =  $jsonRequest.data[?(@.language!= null)].language
    * print "checking ",allLanguages
