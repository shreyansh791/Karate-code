Feature: f2

  Scenario: s2
    * def pushBasics =
    """
function(data) {
var group = []
group.push({
                name: 'Shreyansh',
                age: 32,
            })
            group.push({
                name: 'Mohan',
                age: 32,
            })
            group.push({
                name: 'Sarjit',
                age: 32,
            })
return group
    }
    """
    * def check = pushBasics(jsonRequest)
    * print check

  Scenario: s3
    * def pushBasics =
    """
function(data) {
var group = {}
group['a'] = group['a'] || []
group['b'] = group['b'] || []
group['c'] = group['c'] || []
group['a'].push({
                name: 'Shreyansh',
                age: 32,
            })
            group['b'].push({
                name: 'Mohan',
                age: 32,
            })
            group['c'].push({
                name: 'Sarjit',
                age: 32,
            })
            karate.log(" Object.entries(group) ",  Object.entries(group))
return group
    }
    """
    * def check = pushBasics()
    * print check

