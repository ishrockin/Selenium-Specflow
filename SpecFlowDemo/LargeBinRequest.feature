Feature: LargeBinRequest
	As the LBS waste service
	I want to check every request for a large refuse bin
	So that I can only allow those where the customer is in genuine need of that waste capacity

	@mytag1
Scenario: LargeBinRequest Happy Path
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more waste options & manage my containers
	And they select I want a larger bin & enter further details about contact / household
	Then they get a confirmation screen with the case number

	@mytag2
Scenario: largebinrequest incorrect address
	Given user is on the findresidentialwasteservices page
	When they enter the incorrect property details to search their address
	Then they get a message saying details are not valid