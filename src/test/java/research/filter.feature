Feature: f1

  Scenario: s1

    * def numbers = [1,2,3,4,5,6,7,8,9,10]

    * def filteredResponse = numbers.filter( (num) => num > 4)

    * print "filteredResponse ", filteredResponse


  Scenario: s2

    * def numbers = [1,2,3,4,5,6,7,8,9,10]

    * def filteredResponse = numbers.filter( (num) => {return num > 4})

    * print "filteredResponse ", filteredResponse
