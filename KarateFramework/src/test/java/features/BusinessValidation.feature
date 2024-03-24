Feature: To Test Business validation from the response
 
  Background: Setup the Base path
    * url 'https://gorest.co.in'
    * def Businessjson = read('../resource/BusinessValidation.json')
    And print '========== This is Background Keyword ================='

 Scenario Outline: Verify that error message is displayed when existing email id is used.
Given path '/public/v2/users'	
And header Authorization = 'Bearer '+ tokenID
And request Businessjson
When method post
Then status 422
* print response
Examples:
|Response|
|Businessjson.emailBusinessValidationreq|Businessjson.emailBusinessValidationResponse|

Scenario Outline: Verify that error message is displayed when existing status  is differnt.
Given path '/public/v2/users'	
And header Authorization = 'Bearer '+ tokenID
And request Businessjson
When method post
Then status 422
* print response
Examples:
|Response|
|Businessjson.statusBusinessValidationreq|Businessjson.stausBusinessValidationResponse|

 