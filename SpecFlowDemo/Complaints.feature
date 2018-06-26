Feature: Complaints
	As a customer
	I want to complain about some aspect of the waste service I have received
	So that it can be rectified

	@mytag1
Scenario: Complaints - Bin Return - Recycling
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select bin return radio button
	When they select recycling service
	And they select the bin was not returned to your property
	When they enter further details about the complaint
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Bin Return - Rubbish
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select bin return radio button
	When they select rubbish service
	And they select the bin was returned but with the lid left open
	When they enter further details about the complaint
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Bin Return - Garden Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select bin return radio button
	When they select garden waste service
	And they select the bin was returned but left in a way that caused an obstruction
	When they enter further details about the complaint
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste Spillage - Recycling
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select waste spillage radio button
	When they select recycling service
	And they enter further details about the complaint
	When they select yes for crews to return
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste Spillage - Rubbish
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select waste spillage radio button
	When they select rubbish service
	And they enter further details about the complaint
	When they select yes for crews to return
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste Spillage - Garden Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select waste spillage radio button
	When they select garden waste service
	And they enter further details about the complaint
	When they select no for crews to return
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste Spillage - Neighbourhoods team
	Given neighbourhoods team is on CRM
	When they open their pending queue
	And navigate down to the complaints section 
	When they open a complaints case with Waste Spillage that has response received from Veolia
	And they click on the three dots of the activities section on the case to send an email 
	Then they get a draft email screen with pre populated text that can be further edited & then send the email to the customer

Scenario: Complaints - Crew Behaviour - Bulky Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select crew behaviour radio button
	When they select bulky waste service
	And they enter further details about the complaint
	When they select yes for raised same issue before
	And they enter the previous case number
	When they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Crew Behaviour - Recycling
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select crew behaviour radio button
	When they select Recycling service
	And they enter further details about the complaint
	When they select no for raised same issue before
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Crew Behaviour - Rubbish
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select crew behaviour radio button
	When they select Rubbish service
	And they enter further details about the complaint
	When they select yes for raised same issue before
	And they enter the previous case number
	When they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Crew Behaviour - Garden Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select crew behaviour radio button
	When they select Garden Waste service
	And they enter further details about the complaint
	When they select no for raised same issue before
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Crew Behaviour - Neighbourhoods team
	Given neighbourhoods team is on CRM
	When they open their pending queue
	And navigate down to the complaints section 
	When they open a complaints case with crew behaviour that has response received from Veolia
	And they click on the three dots of the activities section on the case to send an email 
	Then they get a draft email screen with pre populated text that can be further edited & then send the email to the customer

Scenario: Complaints - Collection Time - Bulky Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Collection Time radio button
	When they select bulky waste service
	And they enter further details about the complaint
	When they select yes for raised same issue before
	And they enter the previous case number
	When they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Collection Time - Recycling
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Collection Time radio button
	When they select Recycling service
	And they enter further details about the complaint
	When they select no for raised same issue before
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Collection Time - Rubbish
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Collection Time radio button
	When they select Rubbish service
	And they enter further details about the complaint
	When they select yes for raised same issue before
	And they enter the previous case number
	When they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Collection Time - Garden Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Collection Time radio button
	When they select Garden Waste service
	And they enter further details about the complaint
	When they select no for raised same issue before
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste not presented in time - Bulky Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Waste not presented in time radio button
	When they select bulky waste service
	And they enter further details about the complaint
	When they select yes for raised same issue before
	And they enter the previous case number
	When they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste not presented in time - Recycling
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Waste not presented in time radio button
	When they select Recycling service
	And they enter further details about the complaint
	When they select no for raised same issue before
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste not presented in time - Rubbish
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Waste not presented in time radio button
	When they select Rubbish service
	And they enter further details about the complaint
	When they select yes for raised same issue before
	And they enter the previous case number
	When they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Waste not presented in time - Garden Waste
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Waste not presented in time radio button
	When they select Garden Waste service
	And they enter further details about the complaint
	When they select no for raised same issue before
	And they enter the customer details
	Then they get a confirmation screen with the case number

Scenario: Complaints - Damage to property
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select complaint or give feedback button
	And they select Damage to property in time radio button
	Then they get further details about how to make a claim