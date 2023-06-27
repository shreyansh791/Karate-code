Feature: f

  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  Scenario: s

    * def data = [{ name: 'one', periods: [{ index: 1, value: 'a' },{ index: 2, value: 'b' }]}, { name: 'two', periods: [{ index: 1, value: 'c' },{ index: 2, value: 'd' }]}]

* print data

    * def fnPeriod = function(x){ x.value = x.value + x.index; return x }
    * def fnData =
  """
  function(x) {
    name = x.name,
    print("x periods: " , JSON.stringify(x.periods));
    periods= karate.map(x.periods, fnPeriod)
    print("json 2 : " , JSON.stringify(x));
    return x
    }
  """

    * def converted = karate.map(data, fnData)
    * print converted