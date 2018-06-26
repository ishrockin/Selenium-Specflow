Feature: MissedBin
	As a customer receiving a residential waste collection service
	I want to report that my waste has not been collected as expected
	So that it can be re-collected and taken away

	As the council
	I want to make sure I only receive what I consider to be valid missed collection reports
	So that I can manage my workload, costs and monitor performance

Scenario: Missed Bin Happy Path
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more waste options & manage my containers
	And they select I want a larger bin & enter further details about contact / household
	Then they get a confirmation screen with the case number
