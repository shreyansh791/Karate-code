Feature: f1

  Background:
#  * configure abortedStepsShouldPass = true
  Scenario Outline: s1
    * def request1 =
    """
  {
  "SuccessfulRequests": [
  {
  "Status": '#(<Status>)',
  "ResourceID": 2373202,
  "Message": "Created resource 1 at URI: /ids/2373202"
  }
  ]
  }
    """

#    * print request1.SuccessfulRequests[0].Status
    * print request1
#  eval- is used to evaluate a condition and return/perform a desired value/action.
    * eval
    """
     if(request1.SuccessfulRequests[0].Status >= 400) {
  karate.log("Skipping this iteration...");
  karate.abort();
  }
"""

    * print "check "
    * print "check1 "
    * print "check2 "
    * print "check3 "
    * print "check4 "


    Examples:
      | Status |
      | 200    |
      | 201    |
      | 400    |
      | 500    |
      | 600    |