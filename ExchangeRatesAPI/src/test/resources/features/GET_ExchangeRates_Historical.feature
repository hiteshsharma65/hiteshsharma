@HistoricalExchange
Feature: Latest Exchange Rates API
  I want to validate the latest exchange rates API for various test conditions

  
  Scenario: Validate response for Latest exchange rate with Valid data 
  	When I perform GET operation with Base, Symbols and Date
  	| base  | symbol 	 | date 			|
    | EUR	  |   GBP  	 | 2020-11-24	|
    Then I should get response code as 200
    And validate the following response
    | base | rates | date 			|
    | EUR	 | GBP	 | 2020-11-24	|
    And validate the Content Type as "application/json"
    
  Scenario: Validate response for invaild request
  
  When I make an invalid request with invalid date
  Then I should get response code as 400