Feature: First Feature

  Scenario: First Scenario in Karate framework

    * def doWork =
  """
  function(argument,a1) {
    return 'Hello ' + argument + ' ' + a1;
  }
  """
    * def result = doWork('world','India')
    And print "result :: "+result


  Scenario: Delete attribute using delete Scenario in Karate framework

    * def doWork =
  """
  function(jsonData) {
   print("json: " , JSON.stringify(jsonData));
   delete jsonData.age
   print("json: " , JSON.stringify(jsonData));
return jsonData
  }
  """
    * def jsonRequest = {name: "shreyansh", age: 32}
    * def result = doWork(jsonRequest)
    * match result == {name: "shreyansh"}


  Scenario: set data within js function Scenario in Karate
    * def doWork =
  """
  function(jsonData) {
   print("json: " , JSON.stringify(jsonData));
 jsonData.programmingLanguage = 'Java'
 jsonData.framework = 'Karate'
 jsonData.array = [1,2,3,4]
 jsonData.array1 = [{"key1":"value1"},{"key2":"value2"}]
   print("json: " , JSON.stringify(jsonData));
return jsonData
  }
  """
    * def jsonRequest = {name: "Karate Test", topic: "API Testing"}
    * def result = doWork(jsonRequest)
    And print "result ", result


  Scenario: Third
    * def GetHeaders =
"""
   function(at, rt){
       var head = {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'token': at,
          'refresh-token': rt,
          'channel': 'online'
        }
   return head
   }
"""
    * def headerObject = GetHeaders('shfusdfhdskfds', 'ueworuewoew767638')
    * karate.log("headers " , headerObject )
#    * karate.log("headers " + GetHeaders('shfusdfhdskfds', 'ueworuewoew767638'))


  Scenario: fourth

    * def checkObj =
    """
        function(obj) {
            print("object: " , JSON.stringify(obj));
            const keys = Object.keys(obj);
            print("### keys:", keys);
            keys.forEach(key => {
                print("### key:", key);
                print("### value:", myObj[key]);
            });
        }
    """
    * def myObj = { foo: "bar" }
    * checkObj(myObj)


  Scenario: 6th scenario
    * def payload =
"""
function(var1, var2) {
    return {
        first: var1,
        second: var2
    };
}
"""

    * def body = payload('foo', 'bar')
    * match body == { first: 'foo', second: 'bar' }

    Scenario: 7th scenario
    * def doWork =
  """
  function(jsonData) {
   print("json: " , JSON.stringify(jsonData));
 jsonData.programmingLanguage = 'Java'
 jsonData.framework = 'Karate'
 jsonData.check = 'Karate ' + 100.00
return jsonData
  }
  """
    * def jsonRequest = {name: "Karate Test", topic: "API Testing"}

      * if(jsonRequest.name = "Karate Test") result = doWork(jsonRequest)
    And print "result ", result


