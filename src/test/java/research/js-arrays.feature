Feature: various javascript tests

  Scenario: karate filter operation, using array indexes
    * def fun = function(x, i){ return i % 2 == 0 }
    * def list = [1, 2, 3, 4]
    * def res = karate.filter(list, fun)
    * match res == [1, 3]

  Scenario: karate filter operation, using array value
    * def fun = function(x, i){ return x % 2 == 0 }
    * def list = [1, 2, 3, 4]
    * def res = karate.filter(list, fun)
    * match res == [2, 4]

  Scenario: remove json key using keyword
    * def json = { foo: 'bar', hello: 'world' }
    * delete json.foo
    * match json == { hello: 'world' }


  Scenario: remove json key from js
    * def json = { foo: 'bar', hello: 'world' }
    * def fun = function(){ karate.remove('json', 'foo') }
    * call fun
    * print json
    * match json == { hello: 'world' }

  Scenario: remove json key from js 2
    * def json = { foo: 'bar', hello: 'world' }
    * def fun = function(){ delete json.foo }
    * call fun
    * match json == { hello: 'world' }

  Scenario: map and repeat should not mangle js arrays
    * def foo = [1, 2]
    * def fun = function(x){ return { x: x, bar: [1, 2] } }
    * def res = karate.map(foo, fun)
    * match res == [{ x: 1, bar: [1, 2]}, { x: 2, bar: [1, 2] }]

    * def fun = function(i){ return { foo: [1, 2]} }
    * def bar = karate.repeat(2, fun)
    * match bar == [{ foo: [1, 2] }, { foo: [1, 2] }]