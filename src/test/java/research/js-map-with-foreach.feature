Feature:

  Scenario: js map with for-each

    * def response =
    """
    [
        {
            "type": "unit",
            "id": 1004,
            "name": "Name 1",
            "code": "Code Name 1",
            "shortName": "Short Name 1"
        },
        {
            "type": "unit",
            "id": 615,
            "name": "Name 2",
            "code": "Code 2",
            "shortName": "Short Name 2"
        },
        {
            "type": "unit",
            "id": 1071,
            "name": "Name 3",
            "code": "Code 3",
            "shortName": "Short Name 3"

        }
]
    """
    * def result = {}
    * def keys = ['id', 'name', 'code', 'shortName']
    * keys.forEach(x => result[x] = response.map(y => y[x]))
    * print result