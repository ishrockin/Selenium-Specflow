Feature: AssistedCollection
	As a resident who has an ongoing physical issue
	I want to get help with putting my bins out and taking them back in
	So that I can get rid of my waste

	As the council
	I want to make sure only people who really need assistance get it
	So that I am can manage my costs

	@mytag1
Scenario: AssistedCollection CSA Happy Path
	Given CSA is on the CRM page to find a customer
	When they enter the correct customer details
	And they select the relevant customer address
	When they choose to add a new case for this customer
	And they select call guide for 'Waste Find Residential Services'
	Then they use the selected address
	When the CSA chooses 'Request Assisted Collection' option 
	And they select 'yes' to the person experiencing difficulties & 'no' to anybody in the house to help
	When they enter the further customer details
	And they enter more details about location where the bins can be stored
	When they select the assisted collection request to be long term
	And the CSA approves the request
	Then they get a confirmation page with the case number
	 
	Scenario: AssistedCollection CSA Not sure - Neighbourhood Path
	Given CSA is on the CRM page to find a customer
	When they enter the correct customer details
	And they select the relevant customer address
	When they choose to add a new case for this customer
	And they select call guide for 'Waste Find Residential Services'
	Then they use the selected address
	When the CSA chooses 'Request Assisted Collection' option 
	And they select yes to the person experiencing difficulties & no to anybody in the house to help
	When they enter the further customer details
	And they enter more details about location where the bins can be stored
	When they select the assisted collection request to be long term
	And the CSA selects 'Not Sure' about the request
	When the neighbourhood team opens the case & approves it
	Then they get a confirmation page with the case number

	Scenario: AssistedCollection CSA - Reject Path
	Given CSA is on the CRM page to find a customer
	When they enter the correct customer details
	And they select the relevant customer address
	When they choose to add a new case for this customer
	And they select call guide for 'Waste Find Residential Services'
	Then they use the selected address
	When the CSA chooses 'Request Assisted Collection' option 
	And they select yes to the person experiencing difficulties & no to anybody in the house to help
	When they enter the further customer details
	And they enter more details about location where the bins can be stored
	When they select the assisted collection request to be long term
	And the CSA selects 'Reject' about the request
	Then they get a confirmation page with the case number

	Scenario: AssistedCollection CSA Quick Decision Path
	Given CSA is on the CRM page to find a customer
	When they enter the correct customer details
	And they select the relevant customer address
	When they choose to add a new case for this customer
	And they select call guide for 'Waste Find Residential Services'
	Then they use the selected address
	When the CSA chooses 'Request Assisted Collection' option 
	And they select 'No' to the person experiencing difficulties & 'Yes or no' to anybody in the house to help
	When the CSA makes a decision on the request
	Then they get a confirmation page with the case number

	Scenario: AssistedCollection CSA Temporary request Path
	Given CSA is on the CRM page to find a customer
	When they enter the correct customer details
	And they select the relevant customer address
	When they choose to add a new case for this customer
	And they select call guide for 'Waste Find Residential Services'
	Then they use the selected address
	When the CSA chooses 'Request Assisted Collection' option 
	And they select 'yes' to the person experiencing difficulties & 'no' to anybody in the house to help
	When they enter the further customer details
	And they enter more details about location where the bins can be stored
	When they select the assisted collection request to be temporary
	And the CSA gets the start & end dates from the customer
	When the CSA approves the request
	Then they get a confirmation page with the case number

	@mytag2
Scenario: AssistedCollection SelfService Path
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	Then they get a message at the bottom of the page asking to contact CSA team to request assisted collection
