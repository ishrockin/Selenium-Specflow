Feature: DownloadCalendar
	As the council
	I want to allow the customer to download or print a yearly collection schedule for their property

	@mytag1
Scenario: DownloadCalendar Kerbside (Type - A)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details (property for any weekday - 'A' type) to search their address
	And user selects the relevant address & clicks on next
	When they select the download calendar button
	And they save the calendar to their system
	When they compare the last / next collection dates for a waste or recycling service on their property with the details on the calendar for a particular date
	Then they can see the matching details as expected

Scenario: DownloadCalendar Kerbside (Type - B)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details (property for any weekday - 'B' type) to search their address
	And user selects the relevant address & clicks on next
	When they select the download calendar button
	And they save the calendar to their system
	When they compare the last / next collection dates for a waste or recycling service on their property with the details on the calendar for a particular date
	Then they can see the matching details as expected

Scenario: DownloadCalendar Kerbside with Bags (Type - A)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details (property for any weekday - 'A' type) to search their address
	And user selects the relevant address & clicks on next
	When they select the download calendar button
	And they save the calendar to their system
	When they compare the last / next collection dates for a waste or recycling service on their property with the details on the calendar for a particular date
	Then they can see the matching details as expected

Scenario: DownloadCalendar Kerbside with Bags (Type - B)
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details (property for any weekday - 'B' type) to search their address
	And user selects the relevant address & clicks on next
	When they select the download calendar button
	And they save the calendar to their system
	When they compare the last / next collection dates for a waste or recycling service on their property with the details on the calendar for a particular date
	Then they can see the matching details as expected

Scenario: DownloadCalendar FlatsAboveShops
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details (property for any weekday) to search their address
	And user selects the relevant address & clicks on next
	When they select the download calendar button
	And they save the calendar to their system
	When they compare the last / next collection dates for a waste or recycling service on their property with the details on the calendar for a particular date
	Then they can see the matching details as expected
