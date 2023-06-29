

Feature: f11
  Scenario: s1

    * def alphabets = ["a","b","c"]
    * def number = ["1","2","3"]

    * def fun = function(x, i){ var pair = {}; pair[x] = number[i]; return pair }
    * def pairs = karate.map(alphabets, fun)

    * print pairs