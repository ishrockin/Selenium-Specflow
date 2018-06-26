Feature: As a customer 
		 I want to see the list of my bulky waste collections
		 So that I can view my scheduled and historic bulky collections
		 
		 As a customer with a bulky waste collection booked
		 I want to change the date of my collection
		 So that I can make sure the collection meets my current needs

		 As the Council
		 I want to offer a collection service that attracts the maximum number of customers and allows customers to check their scheduled collection dates.
		So that the number of fly tips is minimised and waste disposal is paid for.

	@mytag1
Scenario: BulkyWaste - Book a Bulky Waste Collection - upto 3 items
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select new collection button for a Bulky waste
	And they select waste category as Bathroom
	When they select waste item as Bath
	And they select no to would you like to add another item
	When they enter details about the location
	And they select the first available time slot
	When they select checkbox for terms & conditions and continue to payment
	And they enter the customer details
	When they select to pay £30 using a visa card
	And they enter the card details
	When the payment is processed successfully
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Book a Bulky Waste Collection - upto 6 items
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select new collection button for a Bulky waste
	And they select waste category as Bathroom
	When they select waste item as Bath
	And they select yes to would you like to add another item
	And they select waste category as Garden
	When they select waste item as BBQ
	And they select yes to would you like to add another item
	And they select waste category as Bedroom
	When they select waste item as Headboard
	And they select yes to would you like to add another item
	And they select waste category as DIY
	When they select waste item as Window
	And they select no to would you like to add another item
	When they enter details about the location
	And they select the first available time slot
	When they select checkbox for terms & conditions and continue to payment
	And they enter the customer details
	When they select to pay £50 using a visa card
	And they enter the card details
	When the payment is processed successfully
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Change Date
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection
	When they select change scheduled collection date when asked
	And they select a new time slot
	When they confirm to change the scheduled date
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Add upto 3 items
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection
	When they select Add remove or swap items 
	And they select to add additional item
	When they select waste category as Bedroom
	And they select waste item as Headboard
	When they select no to would you like to add another item
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Add upto 6 items
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection
	When they select Add remove or swap items 
	And they select to add additional item
	And they select waste category as Bathroom
	When they select waste item as Bath
	And they select yes to would you like to add another item
	And they select waste category as Garden
	When they select waste item as BBQ
	And they select yes to would you like to add another item
	And they select waste category as Bedroom
	When they select waste item as Headboard
	And they select yes to would you like to add another item
	And they select waste category as DIY
	When they select waste item as Window
	And they select no to would you like to add another item
	And they enter the customer details
	When they select to pay additional £20 using a visa card
	And they enter the card details
	When the payment is processed successfully
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Add more than 6 items
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection with 6 items
	When they select Add remove or swap items 
	And they select to add additional item
	Then they get a message saying that they will have to book a new collection as they have already reached a limit of 6 items per booking

Scenario: BulkyWaste - Manage a Bulky Waste Collection - remove the only item on the booking
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection with only 1 item on the booking
	When they select Add remove or swap items 
	And they select to remove item
	Then they get a message saying that they will have to call CSA to cancel their booking as they only have 1 item for collection

Scenario: BulkyWaste - Manage a Bulky Waste Collection - remove an item on the booking
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection with 2 to 3 or 5 to 6 items on the booking
	When they select Add remove or swap items 
	And they select to remove item
	When they select the item from the list that has to be removed
	And they select no to would you like to remove another item
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - remove item on the booking leading to a refund
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection with 4 items on the booking
	When they select Add remove or swap items 
	And they select to remove item
	When they select the item from the list that has to be removed
	And they select no to would you like to remove another item
	Then they get a confirmation screen saying that they will get a refund of £20

Scenario: BulkyWaste - Manage a Bulky Waste Collection - swap an item on the booking
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection with 4 items on the booking
	When they select Add remove or swap items 
	And they select to swap an item
	When they select the item from the list that has to be swapped
	And they select waste category as Bedroom
	When they select waste item as Headboard
	And they select no to would you like to swap another item
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - cancel collection
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection with only 1 item on the booking
	When they select cancel collection
	Then they get a message saying that they will have to call CSA to cancel their booking

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Report Missed Collection (Complete Booking)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection booking
	When the booking is acknowledged by contractor or send to contractor & in the past
	And they Report a missed collection for the entire booking
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Report Missed Collection (Some items without resolution code)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection booking
	When the booking is Resolved by contractor & in the past
	When they select the items that have not been collected, without a resolution code & Report a missed collection
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Report Missed Collection (Some items with resolution code)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection booking
	When the booking is Resolved by contractor & in the past
	When they select the items that have not been collected, with a resolution code & Report a missed collection
	Then they can't report the missed collection as they can only choose an item without a resolution code

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Challenge a non Collection
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they enter the case number of an existing Bulky waste collection booking
	When they Challenge a non Collection
	Then they navigate to the complaints screen where they can log a relevant complaint

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Refund - Missed whole collection (Payment - self service)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they select the case number of an existing Bulky waste collection booking
	When the booking has an exisitng missed collection request going past the 24 hours SLA, Collection Date is in the past and Status is in Allocated to Crew
	And all the payments have been made through self service
	When they select to cancel collection & issue a refund
	And the CSA confirms the refund to the customer on the phone, refund email is sent to veolia for this case & triggers followup SLA
	Then the customer will get a refund in 5 working days

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Refund - Missed part collection (Payment - CSA)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they select the case number of an existing Bulky waste collection booking
	When the booking has an exisitng missed collection request going past the 24 hours SLA, Collection Date is in the past and Status is in Allocated to Crew
	And all the payments have been made through CSA
	When they select the items that have not been collected
	And they select to cancel collection & issue a refund
	When the CSA confirms the refund to the customer on the phone & they inform their line manager to process the refund
	Then the customer will get a refund in 10 working days

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Refund - Missed whole collection (Payment - CSA)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they select the case number of an existing Bulky waste collection booking
	When the booking has an exisitng missed collection request going past the 24 hours SLA, Collection Date is in the past and Status by Veolia is resolved
	And all the payments have been made through CSA
	When they select to cancel collection & issue a refund
	And the CSA confirms the refund to the customer on the phone & they inform their line manager to process the refund
	Then the customer will get a refund in 10 working days

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Refund - Missed part collection (Payment - self service)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they select the case number of an existing Bulky waste collection booking
	When the booking has an exisitng missed collection request going past the 24 hours SLA, Collection Date is in the past and Status is in Allocated to Crew
	And all the payments have been made through Self Service
	When they select the items that have not been collected
	And they select to cancel collection & issue a refund
	When the CSA confirms the refund to the customer on the phone, refund email is sent to veolia for this case & triggers followup SLA
	Then the customer will get a refund for Self service payment in 5 working days

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Refund - Missed whole collection (Payment - self service & CSA)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they select the case number of an existing Bulky waste collection booking
	When the booking has an exisitng missed collection request going past the 24 hours SLA, Collection Date is in the past and Status is in Allocated to Crew
	And some payments have been made through Self Service & some by CSA
	When they select to cancel collection & issue a refund
	And the CSA confirms the refund to the customer on the phone, they inform their line manager to process the refund, refund email is sent to veolia for this case & triggers followup SLA
	Then the customer will get a refund for Self service payment in 5 working days & CSA payment in 10 working days

Scenario: BulkyWaste - Manage a Bulky Waste Collection - Refund - Already refunded case
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select Manage my collection button for a Bulky waste
	And they select the case number of an existing Bulky waste collection booking that has been previously refunded
	Then they get a message that a refund for this case reference was approved & requested. 