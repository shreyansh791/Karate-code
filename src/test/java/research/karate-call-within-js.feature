Feature: karate call with in js function feature

  Scenario: karate call with in js function feature
  #  You are mixing karate.call and call read. It's either karate.call(fileName, [arg]) or call read(filename) { arg }
    * def arr = [1,2,3,4,5]
    * def id = 1207

    * def fun =
    """
    function(idArray,index)
    {
print("...................." , idArray)
if(index != 0) karate.call('checl123.feature',{dataPointID: idArray,idvalue:id})
   }
    """
    * karate.forEach(arr,fun)