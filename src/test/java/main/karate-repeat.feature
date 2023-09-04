Feature: karate repeat feature

  Scenario: karate repeat scenario
    * def fun = function(index){return "Karate API Testing Framework "+index}

    * def listOfData =  karate.repeat(10,fun)
    * print  listOfData

  Scenario: second scenario
    * def fun = function(i){ return i * 2 }
    * def foo = karate.repeat(5, fun)
    * match foo ==  [0,2,4,6,10]

  Scenario: third scenario
    * def fun = function(){ return karate.call('@call') }
    * karate.repeat(5, fun)

  @call
  Scenario: this scenario needs to be called
    * def fun = function(){return "called.. "}
    * def check = fun()
    * print check
