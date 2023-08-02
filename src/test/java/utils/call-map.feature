Feature: feature demonstrating removing null values using java utility

  Background:
    * configure logPrettyRequest = true
    * configure logPrettyResponse = true

  Scenario: feature demonstrating removing null values using java utility scenario

    * def jsonObject =
    """
{
name: "Shreyansh Jain",
country: "India",
id: null
}
    """
    * print jsonObject
    * def jsonUtils = Java.type('utils.Jsonutils')
    * def jsonObjectWithOutId =   jsonUtils.removeNullAndEmptyEntry(jsonObject)
    * print jsonObjectWithOutId