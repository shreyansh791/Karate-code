Feature: f1

  Scenario: S1

    * def values = [1]
    * def fun =
"""
function(values,index){
karate.call('pass-array-index.feature',{arrayIndexValue:index})
}
"""
    * karate.forEach(values, fun)