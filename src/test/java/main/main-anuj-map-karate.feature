Feature: f2

  Scenario: s2
 * def jsonRequest =
    """
   {
	"Items": [
		{
			"id": "151",
			"optionNumber": 1,
			"ListItems": [
				{
					"language": "Hindi",
					"value": "1"
				}
			]
		},
		{
			"id": "152",
			"optionNumber": 2,
			"ListItems": [
				{
					"language": "Hindi",
					"value": "4"
				},
				{
					"language": "English",
					"value": "5"
				},
				{
					"language": "Kannada",
					"value": "6"
				}
			]
		},
		{
			"id": "152",
			"optionNumber": 2,
			"ListItems": [
				{
					"language": "Hindi",
					"value": "7"
				},
				{
					"language": "English",
					"value": "8"
				},
				{
					"language": "Kannada",
					"value": "9"
				}
			]
		},
		{
			"id": "152",
			"optionNumber": 2,
			"ListItems": [
				{
					"language": "Hindi",
					"value": "10"
				},
				{
					"language": "English",
					"value": "11"
				},
				{
					"language": "Kannada",
					"value": "12"
				}
			]
		}
	]
}
    """


  * def group = {}

    * def fun22 =
    """
function(data) {
var group = {}
karate.forEach(data.Items,function(item){
karate.forEach(item.ListItems,function(listItem){
group[listItem.language] = group[listItem.language] || []
 group[listItem.language].push({
                optionNumber: item.optionNumber,
                optionValue: listItem.value,
            })
 })
})
const respData = Object.entries(group).map(([key, value]) => ({
    language: key,
    optionValues: value,
  }));
  return { Response: respData };
    }
    """
    * def check = fun22(jsonRequest)
    * print check
