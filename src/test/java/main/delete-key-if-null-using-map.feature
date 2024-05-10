Feature:

  Scenario:
* def jsonObject =
    """
  [
{
name: 'Shreyansh',
city: ''
},
{
name: 'Saurabh',
city: 'Lucknow'
},
{
name: 'Amod',
city: 'Patna'
},

]

    """
    * def updatedBookArray = jsonObject.filter((item) => {if (item.city == '' || item.city == null) {delete item.city}return item})
    * print updatedBookArray


