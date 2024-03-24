Feature: To test the get end point of the applicationTo test different get end point with different data formate supported by the application

 Background: Setup the Base path
    * url baseUrl
    * def successJson = read('../resource/SucessFlows.json')
    And print '========== This is Background Keyword ================='

 Scenario: To get and verify all the user data  from application in JSON format
  
    Given url  baseUrl+'/public/v1/users'
    When method get 
    Then status 200 # the status code response should be 200
   * print response

Scenario: To get user details of a id from application 
* def query = {id:6802846}
Given url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200
* print response

Scenario Outline: To verify new  user created sucessfully
Given path '/public/v2/users'	
And header Authorization = 'Bearer '+ tokenID
And request successJson
When method post
Then status 200
* print response
Examples:
|Response|
|successJson.requestPayload|
 