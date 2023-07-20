Feature:

  Scenario:

    * def jsonObject =
    """
    {expensive:  10}
    """

#    * match jsonObject.expensive == 11
    * def value = get jsonObject.expensive
    * print value

  * def value = jsonObject.expensive
    * print value

    * def value2 = $jsonObject.expensive
    * print value2

    * def getValue = karate.get('jsonObject.expensive')
    * print getValue

    * def getValue = karate.get('$jsonObject.expensive')
    * print getValue


* def j1 =
    """
  {
  "store": {
  "book": [
  {
  "category": "reference",
  "author": "Nigel Rees",
  "title": "Sayings of the Century",
  "price": 8.95
  },
  {
  "category": "fiction",
  "author": "Evelyn Waugh",
  "title": "Sword of Honour",
  "price": 12.99
  },
  {
  "category": "fiction",
  "author": "Herman Melville",
  "title": "Moby Dick",
  "isbn": "0-553-21311-3",
  "price": 8.99
  },
  {
  "category": "fiction",
  "author": "J. R. R. Tolkien",
  "title": "The Lord of the Rings",
  "isbn": "0-395-19395-8",
  "price": 22.99
  }
  ],
  "bicycle": {
  "color": "red",
  "price": 19.95
  }
  },
  "expensive": 10
  }
    """

  * print karate.get('$j1.store.book[*].author')
  * print karate.jsonPath(j1, '$.store.book[*].author')

    * print karate.get('$j1..author')

    * print karate.jsonPath(j1, "$.store.book[?(@.author == 'Nigel Rees' || @.author == 'Evelyn Waugh')].title")


