Feature: GritBin
	As anyone
	I want to request that a grit bin is re-filled
	So that grit is available for use when needed

	@mytag1
Scenario: GritBin Happy Path
	Given user is on the refill grit bin page
	And they click on the Next button
	When they enter the correct road name that has grit bins from list https://github.com/adrianshort/suttonmaps/blob/master/importers/data/grit-bins.csv
	And user selects the relevant address & clicks on next
	When they select relevant grit bin location & confirm that bin is less than 50% full
	And they are on the confirmation screen with the google link to see the bin location
	When they enter their contact details & select next
	Then they get a confirmation screen with the case number & the corresponding email with payment details

	@mytag2
Scenario: GritBin no bins on the road
	Given user is on the refill grit bin page
	And they click on the Next button
	When they enter the road name that has no grit bins 
	Then they get a page saying that no grit bins found on this location

	@mytag3
Scenario: GritBin Not the operational time of the year
	Given user is on the refill grit bin page
	And they click on the Next button
	Then they get a page saying that it is not the operational time of the year