@crud
Feature: integration test

Background:
	* def port = karate.env == 'mock' ? karate.start('cats-mock.feature').port : 8081
    * url 'http://localhost:' + port

Scenario: Use hardcoded uri
    Given path '/hardcoded'
	And request {name:'bob'} 
    When method delete
    Then status 200    
	And match response == { message: 'Success' }

	
Scenario: Get list of cats
	Given path '/cats'
	* method get
	* status 200
	
Scenario: create cat
	Given path '/cats'
	* request {name: 'bob'}
	* method post
	* status 200
	* def idee = response.id
	* print idee
	
Scenario: Delete cat
	Given path '/cats/idee'
#	* request {name: 'bob'}
	* method delete
	* status 200
	* print response
	* match response !contains {id:idee}
	
	