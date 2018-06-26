Feature: GardenWasteSubscription
	As a resident of the borough
	I want to subscribe to the council's garden waste collection service
	So that I can have my garden waste taken away regularly

	@mytag1
Scenario: GardenWasteSubscription - existing 140l bin
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Subscribe to the service for Garden waste collections
	And they have 1x140l containers owned (doesn't show bin capacity on call guide) & customer adds 1x240l garden bin (doesn't show bin capacity on call guide)
	When they enter their customer details
	Then they get a screen to confirm the number of containers & price
	And they navigate to Barclaycard portal for the payment
	When they select the card type as visa & enter card details
	Then they get a confirmation screen with the payment details, case number & the corresponding email with payment details

Scenario: GardenWasteSubscription - existing 240l bin
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Subscribe to the service for Garden waste collections
	And they have 1x240l containers owned (doesn't show bin capacity on call guide) & customer adds 1x240l garden bin (doesn't show bin capacity on call guide)
	When they enter their customer details
	Then they get a screen to confirm the number of containers & price
	And they navigate to Barclaycard portal for the payment
	When they select the card type as visa & enter card details
	Then they get a confirmation screen with the payment details, case number & the corresponding email with payment details

	@mytag2
Scenario: GardenWasteSubscription no new bins requested - existing 140l + 240l bins
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Subscribe to the service for Garden waste collections
	And they have 1x140l & 1x240l containers owned (doesn't show bin capacity on call guide) & customer selects 2x240l garden bins (doesn't show bin capacity on call guide) thus not requesting new bins
	When they enter their customer details
	Then they get a screen to confirm the number of containers & price
	And they navigate to Barclaycard portal for the payment
	When they select the card type as visa & enter card details
	Then they get a confirmation screen with the payment details, case number & the corresponding email with payment details

Scenario: GardenWasteSubscription - existing Garden Sacks
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Subscribe to the service for Garden waste collections
	And they have Garden Sacks owned & customer adds 1x240l garden bin (doesn't show bin capacity on call guide)
	When they enter their customer details
	Then they get a screen to confirm the number of containers & price
	And they navigate to Barclaycard portal for the payment
	When they select the card type as visa & enter card details
	Then they get a confirmation screen with the payment details, case number & the corresponding email with payment details

Scenario: GardenWasteSubscription - Active Subscription within 1 month of expiry
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select to extend their subscription to the service for Garden waste collections
	And they have 1x240l containers owned (doesn't show bin capacity on call guide) & customer adds 240l garden bin (doesn't show bin capacity on call guide)
	When they enter their customer details
	Then they get a screen to confirm the number of containers & price
	And they navigate to Barclaycard portal for the payment
	When they select the card type as visa & enter card details
	Then they get a confirmation screen with the payment details, case number & the corresponding email with payment details

	@mytag2
Scenario: GardenWasteSubscription extra bins to be collected
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Subscribe to the service for Garden waste collections
	And they have 1x140l & 1x240l containers owned (doesn't show bin capacity on call guide) & customer selects 1x240l garden bins (doesn't show bin capacity on call guide) thus 1x140l bin needs to be collected
	When they enter their customer details
	Then they get a screen to confirm the number of containers & price
	And they navigate to Barclaycard portal for the payment
	When they select the card type as visa & enter card details
	Then they get a confirmation screen with the payment details, case number & the corresponding email with payment details

	@mytag1
Scenario: GardenWasteSubscription - Increase Capacity
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more garden waste options
	And they select manage my containers
	When the select add more containers
	And they select to add 1 more bin
	When they enter their customer details
	And they get a screen to confirm the number of containers & price
	When they navigate to Barclaycard portal for the payment
	And they select the card type as visa & enter card details
	Then they get a confirmation screen with the payment details, case number & the corresponding email with payment details

	@mytag1
Scenario: GardenWasteSubscription - Decrease Capacity - Atleast 2 existing bins
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more garden waste options
	And they select manage my containers
	When the select remove more containers
	And they remove 1 more bin
	When they enter their customer details
	And they get a screen to confirm the number of containers they are removing
	Then they get a confirmation screen with the details about how many bins are left in the property

Scenario: GardenWasteSubscription - Decrease Capacity - 1 existing bins
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more garden waste options
	And they select manage my containers
	Then they don't see a button to remove bins

Scenario: GardenWasteSubscription - Increase Capacity - Within Expiry Period
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more garden waste options
	And they select manage my containers
	When the select add more containers
	Then they get a message & button to resubscribe to the service as they are within expiry period

Scenario: GardenWasteSubscription - Decrease Capacity - Within Expiry Period
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more garden waste options
	And they select manage my containers
	When the select remove more containers
	Then they get a message & button to resubscribe to the service as they are within expiry period