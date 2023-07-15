Feature:

  Scenario:
* def jsonObject =
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
    * def updatedBookArray = jsonObject.store.book.map((item) =>{ delete item.author; return item})
    * print updatedBookArray


