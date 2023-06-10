Feature: cc

  Scenario: ccs
    * def req = { name: '#(name)', age: '#(age)' }
  And print "request is ", req