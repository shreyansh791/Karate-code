Feature:

  Scenario: remove duplicates from array
  * def removeDuplicates =
  """
  function removeDuplicates(arr) {
  return arr.filter((item,index) => arr.indexOf(item) === index);
  }
  """

    * def arr = ['1','2','FOR_ALL','FOR_ALL','FOR_ALL','axjanjxna']
    * def arr1 = removeDuplicates(arr);
    * print arr1