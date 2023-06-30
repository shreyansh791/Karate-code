Feature: karate-call

  Scenario: karate-call scenario
#  Karate is designed so that when you do a call of any kind, the last Scenario is what is considered for returning variables.

#  In other words, the best practice is to call one Scenario at a time. You can use tags to "isolate" scenarios if you don't like splitting scenarios into different files.

    * def response = karate.call('karate-call-check.feature@sanity')
    * print response


    * def response = karate.call('karate-call-check.feature@smoke')
    * print response