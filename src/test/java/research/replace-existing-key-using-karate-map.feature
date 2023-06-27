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
    return { updatedKey: x.name, periods: x.periods }
    }
  """

    * def converted = karate.map(data, fnData)
    * print converted
#Must refer
#  https://github.com/karatelabs/karate/blob/master/karate-core/src/test/java/com/intuit/karate/core/js-arrays.feature