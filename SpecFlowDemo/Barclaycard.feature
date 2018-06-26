Feature: Barclaycard
	As a web user
	I want to pay for services online
	So that I can get those services efficiently

	@mytag1
Scenario: Barclaycard happy path
	Given user is on the barclaycard page
	And they enter the customer details & click next
	When they click next after entering the crm product code & purchase quantity 
	And they enter the relevant card details & confirm the payment
	Then they get a confirmation screen with the payment details & the corresponding email with payment details

	@mytag2
Scenario: Barclaycard refused payment
	Given user is on the barclaycard page
	And they enter the customer details & click next
	When they click next after entering the crm product code & purchase quantity 
	And they enter the refused card details & confirm the payment
	Then they get a message saying transaction has been declined

	@mytag3
Scenario: Barclaycard uncertain payment
	Given user is on the barclaycard page
	And they enter the customer details & click next
	When they click next after entering the crm product code & purchase quantity 
	And they enter the uncertain card details & confirm the payment
	Then they get a uncertain screen followed by a confirmation screen with the payment details & the corresponding email with payment details

