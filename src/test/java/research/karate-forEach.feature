Feature: karate for each

  Scenario: karate foreach
    * def jsonArray =
      """
    [
    {
    "id": 1,
    "name": "Alice",
    "age": 25,
    "email": "alice@example.com"
    },
    {
    "id": 2,
    "name": "Bob",
    "age": 30,
    "email": "bob@example.com"
    },
    {
    "id": 3,
    "name": "Charlie",
    "age": 35,
    "email": "charlie@example.com"
    },
    {
    "id": 4,
    "name": "David",
    "age": 40,
    "email": "david@example.com"
    },
    {
    "id": 5,
    "name": "Eve",
    "age": 45,
    "email": "eve@example.com"
    }
    ]


      """

    * def fun =
      """
      function(row) {
        karate.forEach(row, function(column) {
            karate.log(column + ':', row[column])
          })
      }
      """
#      * karate.forEach(jsonArray,fun) below line also does the same.
    * jsonArray.forEach((item)=> fun(item))



  Scenario: karate foreach example 2 using json object

    * def jsonObject =
      """
      {
      "id": 1,
      "name": "Alice",
      "age": 25,
      "email": "alice@example.com"
      }
      """

    * def iterateKeyValuePairs =
    """
    function(row)
    {
 karate.forEach(row, function(key) {
 karate.log("key ", key)
 karate.log(" value  ", row[key])
    })
    }
    """
#    * iterateKeyValuePairs(jsonObject)
  # IMPORTANT - Creating a function and then calling it is not needed.
#  You can use the eval keyword for multi-line JS blocks:
    * eval
"""
karate.forEach(jsonObject, function(key) {
 karate.log("key ", key)
 karate.log(" value  ", jsonObject[key])
 })
"""

  Scenario: karate foreach 2
    * def jsonArray =
      """
    [
    {
    "id": 1,
    "name": "Alice",
    "age": 25,
    "email": "alice@example.com"
    },
    {
    "id": 2,
    "name": "Bob",
    "age": 30,
    "email": "bob@example.com"
    },
    {
    "id": 3,
    "name": "Charlie",
    "age": 35,
    "email": "charlie@example.com"
    },
    {
    "id": 4,
    "name": "David",
    "age": 40,
    "email": "david@example.com"
    },
    {
    "id": 5,
    "name": "Eve",
    "age": 45,
    "email": "eve@example.com"
    }
    ]
      """
    * eval
     """
  jsonArray.forEach((item) => Object.entries(item).forEach(([key, value]) => {
  karate.log("KEY ",key);
  karate.log("Value ",value);
  }
  )
  );
  karate.log("--------------------")
  """