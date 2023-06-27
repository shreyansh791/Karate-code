Feature: eval demo

  Scenario: eval demo scenario

* def clientCode = 'NULL'
    * eval
    """
     if(clientCode ==  'NULL') {
  karate.log(" clientCode is null ");
  }
"""

  Scenario: eval demo scenario

    * def clientCode2 = 'shre'
    * eval
    """
     if(clientCode2 ==  'shre') {
  karate.log(" clientCode2  is " , clientCode2);
  }
"""