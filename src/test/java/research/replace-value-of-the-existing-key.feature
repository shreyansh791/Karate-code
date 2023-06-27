Feature: Replace Value of the existing key in js functionFeature

  Scenario:  Replace Value of the existing key in js function

    * def sample =
"""
function(){
  var map = { foo: 'bar' };
  map.someKey = 'value';
  var someDynamicKey = 'baz';
  map['foo'] = 'ban';
  return map;
}
"""

    * def response = sample()
    * print response