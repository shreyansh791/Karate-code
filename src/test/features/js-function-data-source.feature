Feature: scenario outline using a dynamic generator function

  @setup
  Scenario:
    * def generator = function(i){ if (i == 5) return null; return { name: 'cat' + i, age: i } }

  Scenario Outline: cat name: ${name}

    * def req = { name: '#(name)', age: '#(age)' }
    * print req

    Examples:
      | karate.setup().generator |