Feature: 'Self' Validation Expressions

  Scenario: 'Self' Validation Expressions scenarios

    * def json =
    """
    {
  "data": {
  "methodName": {
  "message": "found 2 records",
  "countOfRecords": 2,
  "list": [
  {
  field1: null,
  field2: "lorem ipsum"
  },
  {
  field1: null,
  field2: "lorem ipsum"
  },
  {
  field1: '123 Main St',
  field2: "lorem ipsum"
  }
  ]
  }
  }
  }
    """

#    * match json.data.methodName.list[*].field1 contains ['123 Main St',null]
    * match each json.data.methodName.list contains { field1: '#? _ == null || _ == "123 Main St"' }
    * match each json.data.methodName.list[*].field1 == "#? _ == null || _ == '123 Main St'"

  Scenario: 2nd scenario

    * def json =
    """
  [
  {
  "id": "1",
  "Status":"Completed"
  },
  {
  "id": "2",
  "Status":"completed"
  },
  {
  "id": "3",
  "Status":"In-Progress"
  },
  {
  "id": "4",
  "Status":"Open"
  }
  ]
    """
#Problem statement: if I want to validate that each status is either 'Open' OR 'In-Progress', how to validate that?

  * def data = json.map(x => x.Status.toLowerCase())
    * print data
    * match each data == "#? _ == 'completed' || _ == 'in-progress' || _ == 'open'"