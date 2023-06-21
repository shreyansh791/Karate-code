Feature: validate dynamic data

#  'Self' Validation Expressions
#  The special 'predicate' marker #? EXPR in the table above is an interesting one.
#  It is best explained via examples. Any valid JavaScript expression that evaluates to a Truthy or Falsy value is
#  expected after the #?.
#  Observe how the value of the field being validated (or 'self') is injected into the 'underscore' expression
#  variable: '_'

  Scenario: validate dynamic data scenario
    * def allowed = ['Music', 'Entertainment', 'Documentaries', 'Family']
    * def response =
"""
[
   [

   ],
   [

   ],
   [
      {
         "tags":"Entertainment"
      }
   ],
   [

   ],
   [
      {
         "tags":"Family1"
      }
   ]
]
"""
    * def temp = get response..tags
    * print temp
#    * match allowed contains temp
    * match each temp == "#? allowed.contains(_)"


    * def date = { month: 3 }
    * def isValidMonth = function(m) { return m >= 1 && m <= 12 }
    * match date == { month: '#? isValidMonth(_)' }


Scenario: usage of 'Self' Validation Expressions

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