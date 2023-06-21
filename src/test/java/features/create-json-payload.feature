Feature: create json payload
  #
#  Scenario: create json payload ignore null and empty
  #
#    * set jsonReq
#      | path | values |
#      | id   | 1      |
#      | id2  |        | this will be ignored as it is empty
#      | id3  | null   | this will be empty as it is null
  #
#    * print jsonReq
  #


  Scenario: create json payload

    * set jsonReq
      | path | values |
      | id   | 1      |
      | id3  | (null) |

    * print jsonReq


  Scenario: create simple json Array

    * set jsonReq
      | path | 0           | 1       | 2       |
      | name | 'Shreyansh' | 'Akash' | 'Mohit' |
      | city | 'Lucknow'   | 'Delhi' | 'Pune'  |

    * print jsonReq