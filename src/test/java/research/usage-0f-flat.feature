Feature: usage-of-flat

  Scenario: scenario..

#  Karate: How to turn a list of lists into a single list?

    * def jsonArray =  [['elemtna', 'doc', 'third'], ['abc'], ['bcd']]
    * print jsonArray
    * print jsonArray.flat()