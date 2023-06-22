Feature: F1

  Scenario: S1

    * def request1 =
    """
  {
  "Successful Requests": [
  {
  "Status": 201,
  "Resource ID": 2373202,
  "Message": "Created resource 1 at URI: /ids/2373202"
  },
  {
  "Status": 201,
  "Resource ID": 2373268,
  "Message": "Created resource 2 at URI: /ids/2373268"
  },
  {
  "Status": 201,
  "Resource ID": 2373334,
  "Message": "Created resource 3 at URI: /ids/2373334"
  }
  ],
  "Failed Requests": []
  }
    """
#    When you have spaces or special characters, refer to nested elements using the square-bracket notation.
  #    For example:

    * print request1["Successful Requests"].length
    * print request1["Successful Requests"][0].Status
#    * print request1["Successful Requests"][0].["Resource ID"]
    * print request1["Successful Requests"][0].Message