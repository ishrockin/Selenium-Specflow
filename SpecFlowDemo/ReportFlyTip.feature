Feature: ReportFlyTip
	As anyone
	I want to report a fly-tip
	so my way isn't blocked and the environment is clean and tidy

	@mytag1
Scenario: ReportFlyTip Public Road
	Given User is on the ReportFlyTip Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as public road
	When User enters the Fly tip location & clicks next
	And They enter the relevant details on the public road information pages
	Then they get a confirmation screen with the case number

	@mytag2
Scenario: ReportFlyTip Car park
	Given User is on the ReportFlyTip Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as Car Park
	When User selects the car park location & clicks next
	And They enter the relevant details on the car park information pages
	Then they get a confirmation screen with the case number

	@mytag3
Scenario: ReportFlyTip In a park
	Given User is on the ReportFlyTip Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as In a park
	When User enters the park details & clicks next
	And They enter the relevant details on the park information pages
	Then they get a confirmation screen with the case number

	@mytag4
Scenario: ReportFlyTip private land
	Given User is on the ReportFlyTip Page
	When they select Yes to first time report & click on next
	When they click on the next button after selecting the problem source as private land
	Then they get a confirmation screen with the case number

	@mytag4
Scenario: ReportFlyTip Somewhere else
	Given User is on the ReportFlyTip Page
	When they select Yes to first time report & click on next
	When they click on the next button after selecting the problem source as Somewhere Else
	Then they get a confirmation screen with the case number

Scenario: ReportFlyTip Escalation inside 24 hrs
	Given User is on the ReportFlyTip Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	Then they get a message on the screen that they can't escalate case as its inside 24 hrs

Scenario: ReportFlyTip Escalation outside 24 hrs - Open with Veolia - Allocated to Neighbourhoods team
	Given User is on the ReportFlyTip Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that case is allocated to contractor & they can provide additional details to the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportFlyTip Escalation outside 24 hrs - Completed by Veolia hence new request
	Given User is on the ReportFlyTip Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that case is completed by contractor & they can provide additional details to reopen the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportFlyTip Escalation outside 24 hrs - Veolia needs more information
	Given User is on the ReportFlyTip Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that contractor needs additional details & they can provide details to the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportFlyTip Escalation outside 24 hrs - Not completed by Veolia - Allocated to Neighbourhoods team
	Given User is on the ReportFlyTip Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that Not Completed by Veolia for “Too Big /  Private Property/Land /Health &amp; Safety Issue” & they can provide additional details to the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportFlyTip Escalation outside 24 hrs - ID Verde
	Given User is on the ReportFlyTip Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	Then they get a confirmation case number & escalate email sent to ID Verde