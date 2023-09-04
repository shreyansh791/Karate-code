Feature: karate repeat feature

  Scenario: karate repeat scenario
    * def fun = function(index){return "Karate API Testing Framework "+index}

    * def listOfData =  karate.repeat(10,fun)
    * print  listOfData