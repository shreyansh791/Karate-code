Feature: data driven f

  Scenario: datadriven s

    * table kittens
      | name   | age |
      | 'Bob'  |   2 |
      | 'Wild' |   1 |
      | 'Nyan' |   3 |

    * def result = call read('cat-create.feature') kittens
    And print "result ",result