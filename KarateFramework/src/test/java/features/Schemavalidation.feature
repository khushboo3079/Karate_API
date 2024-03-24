Feature: To Test Schema validation from the response
 
  Background: Setup the Base path
    * url 'https://gorest.co.in'
    * def Schemajson = read('../resource/SchemaValidation.json')
  # And tokenID ='f45eaee2ccea6fc6150500802d2e8d1fe9479303ed264b10dcf3c9afca3f5509'
    And print '========== This is Background Keyword ================='

 Scenario Outline: To validate provided wrong format email id   in request from application in JSON format
Given path '/public/v2/users'	
And header Authorization = 'Bearer '+ tokenID
And request Schemajson
When method post
Then status 422
* print response
Examples:
|Response|
|Schemajson.SchemaValidationreq|Schemajson.SchemaValidationResponse|


Scenario Outline: To validate provided wrong format of gender   in request from application in JSON format
Given path '/public/v2/users'	
And header Authorization = 'Bearer '+ tokenID
And request Schemajson
When method post
Then status 422
* print response
Examples:
|Response|
|Schemajson.SchemaValidationreqgender|Schemajson.SchemaValidationResponsegender|


 