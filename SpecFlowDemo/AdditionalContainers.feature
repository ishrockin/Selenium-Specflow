Feature: AdditionalContainers

	@mytag1
Scenario: AdditionalContainers Damaged Containers
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more recycling options & manage my containers
	And they select damaged containers
	When they enter 1 damaged food waste container to be replaced
	And they enter further details about contact / household
	Then they get a confirmation screen with the case number

Scenario: AdditionalContainers I need more containers
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more recycling options & manage my containers
	And they select I need more containers
	Then they get a message with the council policy & CSA contact details to request more containers

Scenario: AdditionalContainers I need fewer containers
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more recycling options & manage my containers
	And they select I need fewer containers as they have extra recycling bag
	When they enter 1 recycling bag to be collected
	And they enter further details about contact / household
	Then they get a confirmation screen with the case number

Scenario: AdditionalContainers I need more containers Escalate
	Given user is on the findresidentialwasteservices page
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more recycling options & manage my containers
	And they select the escalate button as they have not got addional container as promised
	Then they get a confirmation screen with the case number

Scenario: AdditionalContainers Replacement Containers CSA
	Given CSA is on the findresidentialwasteservices call guide
	When they enter the correct property details to search their address
	And user selects the relevant address & clicks on next
	When they select more recycling options & manage my containers
	And they select replacement containers
	When they enter 1 recycling bag to be replaced & select reason as it is damaged
	Then they get a confirmation screen with the case number

Scenario: AdditionalContainers I need more containers CSA
	Given CSA is on the findresidentialwasteservices call guide
	When they select the relevant address & clicks on next
	And they select more recycling options & manage my containers
	When they select I need more containers
	And they tick food waste container checkbox
	When they enter number of people in household & reason for request
	And they set the request status as Not sure
	When they click next they get a confirmation screen with case number & case is forwarded to neighbourhoods team pending queue
	And neighbourhood team allows the request from their pending queue
	Then additional container request is approved & event is sent to veolia via echo

Scenario: AdditionalContainers I need fewer containers CSA
	Given CSA is on the findresidentialwasteservices call guide
	When they select the relevant address & clicks on next
	And they select more recycling options & manage my containers
	When they select I need fewer containers as they have extra food waste container
	And they enter 1 food waste container to be collected
	Then they get a confirmation screen with the case number