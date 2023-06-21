Feature: cc

  Scenario: ccs
    * def jsonRequest =
    """
  [
  {
  "f1": "v1",
  "x": "A"
  },
  {
  "f1": "q1",
  "x": "B"
  },
  {
  "f1": "q2",
  "x": "D"
  }
  ]
    """

    * print " jsonRequest ... ", jsonRequest
    * def values = jsonRequest.map(x => x.x)
    * print "values ", values
    * match each values == '#regex [A-D]'

  Scenario: usage of isValid
    * def response =
"""
[
  {
    "f1": "v1",
    "x": "A"
  },
  {
    "f1": "q1",
    "x": "B"
  }
]
"""
    * def isValid = function(x){ return x == 'A' || x == 'B' || x == 'C' }
    * def schema = { f1: '#string', x: '#? isValid(_)' }
    * match each response == schema

  Scenario: usage of karate.mapWithKey
    * def jsonRequest =
    """
  [
  {
  "f1": "v1",
  "x": "A"
  },
  {
  "f1": "q1",
  "x": "B"
  },
  {
  "f1": "q2",
  "x": "D"
  }
  ]
    """

    * def values = jsonRequest.map(x => x.x)
    * def json = karate.mapWithKey(values,"id")
    * print json