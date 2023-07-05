Feature: using the results of an API call as a data-source

  @setup
  Scenario:
    * url 'https://jsonplaceholder.typicode.com/users'
    * method get
    * def data = [{ id: 1, name: 'a' }, { id: 2, name: 'b' }]

  Scenario Outline: ws1
    * print "id ==> " , id
    * print "name ==> ", name

    Examples:
      | karate.setup().data |

  @setup
  Scenario: S2
    * def names = ["COUNTRY", "NAME", "SURNAME", "SEX", "ID"]
    * def data = names.map(x => ({ name: x }))
    * print data

  Scenario Outline: name:
    * print 'name is:', name

    Examples:
      | karate.setup().data |