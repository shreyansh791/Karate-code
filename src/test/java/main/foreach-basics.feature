Feature: for each basics

  Scenario: for each basics scenario


    * def fun =
    """
function(data,index) {
karate.log(data, index)
}
    """
    * def jsonRequest =
    """
    [
    {
    "name": "Shreyansh"
    },{
"name": "Aman"
    },{
"name": "Rahul"
    }
    ]
    """
    * karate.forEach(jsonRequest,fun)