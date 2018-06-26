Feature: ReportDirtyArea
	As anyone
	I want to request cleaning of a dirty location
	So that the general environment is more pleasant for me

	@mytag1
Scenario: ReportDirtyArea Public Road
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as public road
	When User enters the Dirty Area location & clicks next
	And They enter the relevant details on the public road information pages
	Then they get a confirmation screen with the case number

	@mytag1
Scenario: ReportDirtyArea Public Road - Dead Animal
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as public road
	When User enters the Dirty Area location & clicks next
	And They enter the relevant details on the public road information pages for a dead animal
	Then they get a confirmation screen with the case number

Scenario: ReportDirtyArea Public Road - Dog Fouling
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as public road
	When User enters the Dirty Area location & clicks next
	And They enter the relevant details on the public road information pages for a dog fouling
	Then they get a confirmation screen with the case number

	@mytag2
Scenario: ReportDirtyArea Car park
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as Car Park
	When User selects the car park location & clicks next
	And They enter the relevant details on the car park information pages
	Then they get a confirmation screen with the case number

	@mytag2
Scenario: ReportDirtyArea Car park - Dead Animal
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as Car Park
	When User selects the car park location & clicks next
	And They enter the relevant details on the car park information pages for a dead animal
	Then they get a confirmation screen with the case number

Scenario: ReportDirtyArea Car park - Dog Fouling
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as Car Park
	When User selects the car park location & clicks next
	And They enter the relevant details on the public road information pages for a dog fouling
	Then they get a confirmation screen with the case number

	@mytag3
Scenario: ReportDirtyArea In a park
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as In a park
	When User enters the park details & clicks next
	And They enter the relevant details on the park information pages
	Then they get a confirmation screen with the case number

	@mytag4
Scenario: ReportDirtyArea Private Land
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as Private Land
	Then they get a confirmation screen with the case number

	@mytag5
Scenario: ReportDirtyArea Somewhere else
	Given User is on the ReportDirtyArea Page
	When they select Yes to first time report & click on next
	And they click on the next button after selecting the problem source as Somewhere Else
	Then they get a confirmation screen with the case number

Scenario: ReportDirtyArea Escalation inside 24 hrs
	Given User is on the ReportDirtyArea Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	Then they get a message on the screen that they can't escalate case as its inside 24 hrs

Scenario: ReportDirtyArea Escalation outside 24 hrs - Open with Veolia - Allocated to Neighbourhoods team
	Given User is on the ReportDirtyArea Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that case is allocated to contractor & they can provide additional details to the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportDirtyArea Escalation outside 24 hrs - Completed by Veolia hence new request
	Given User is on the ReportDirtyArea Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that case is completed by contractor & they can provide additional details to reopen the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportDirtyArea Escalation outside 24 hrs - Veolia needs more information
	Given User is on the ReportDirtyArea Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that contractor needs additional details & they can provide details to the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportDirtyArea Escalation outside 24 hrs - Not completed by Veolia - Allocated to Neighbourhoods team
	Given User is on the ReportDirtyArea Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	And they see a message on the screen that Not Completed by Veolia for “Too Big /  Private Property/Land /Health &amp; Safety Issue” & they can provide additional details to the case
	When they enter additional case details & click on next
	Then they get a confirmation case number & a corresponding email

Scenario: ReportDirtyArea Escalation outside 24 hrs - ID Verde
	Given User is on the ReportDirtyArea Page
	When they select No to first time report & click on next
	And they enter the case number of the previous case & select next
	When they confirm yes to case details & click on next
	Then they get a confirmation case number & escalate email sent to ID Verde