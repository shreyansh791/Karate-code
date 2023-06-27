Feature: f

  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  Scenario: s

    * def data = [{ name: 'one', periods: [{ index: 1, value: 'a' },{ index: 2, value: 'b' }]}, { name: 'two', periods: [{ index: 1, value: 'c' },{ index: 2, value: 'd' }]}]

* print data
    * def fnData =
  """
  function(x) {
    x['name'] = 'three'
    return x
    }
  """

    * def converted = karate.map(data, fnData)
    * print converted