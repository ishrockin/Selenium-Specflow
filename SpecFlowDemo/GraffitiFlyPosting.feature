Feature: GraffitiFlyPosting
        As anyone 
		I want to report some graffiti / fly-posting 
		So that I don't have to look at it 

		As the council 
		I want to make sure I only receive what I consider to be valid reports 
		So that I can manage my workload and costs 

Scenario: Graffiti - Public Road / Building
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as public building / wall
        When User enters the location, clicks next & adds more location details
        And They choose report type as graffiti
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Graffiti - Private Road / Building
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as private building / wall
        When User enters the location, clicks next & adds more location details
        And They choose report type as graffiti
        When They report it to be Non offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Graffiti - Monument
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Monument
        When User enters the location, clicks next & adds more location details
        And They choose report type as graffiti
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Graffiti - Street Bench
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Street Bench
        When User enters the location, clicks next & adds more location details
        And They choose report type as graffiti
        When They report it to be Non offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Graffiti - Street Litter Bin
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Street Litter Bin
        When User enters the location, clicks next & adds more location details
        And They choose report type as graffiti
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Graffiti - Car Park
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Car Park
        When User enters the location, clicks next & adds more location details
        And They choose report type as graffiti
        When They report it to be Non offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Graffiti - Park
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Park
        When User enters the location, clicks next & adds more location details
        And They choose report type as graffiti
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Fly Posting - Public Road / Building
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as public building / wall
        When User enters the location, clicks next & adds more location details
        And They choose report type as Fly Posting
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Fly Posting - Private Road / Building
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as private building / wall
        When User enters the location, clicks next & adds more location details
        And They choose report type as Fly Posting
        When They report it to be Non offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Fly Posting - Monument
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Monument
        When User enters the location, clicks next & adds more location details
        And They choose report type as Fly Posting
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Fly Posting - Street Bench
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Street Bench
        When User enters the location, clicks next & adds more location details
        And They choose report type as Fly Posting
        When They report it to be Non offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Fly Posting - Street Litter Bin
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Street Litter Bin
        When User enters the location, clicks next & adds more location details
        And They choose report type as Fly Posting
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Fly Posting - Car Park
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Car Park
        When User enters the location, clicks next & adds more location details
        And They choose report type as Fly Posting
        When They report it to be Non offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Fly Posting - Park
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Park
        When User enters the location, clicks next & adds more location details
        And They choose report type as Fly Posting
        When They report it to be offensive
        And They enter the relevant details on the information pages
        Then they get a confirmation screen with the case number

Scenario: Graffiti - Housing estate
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Housing estate
        Then they get a confirmation screen with alternative contact details & the case number as council is not responsible

Scenario: Graffiti - Bus Stop
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Bus Stop
        Then they get a confirmation screen with alternative contact details & the case number as council is not responsible

Scenario: Graffiti - Post Box
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Post Box
        Then they get a confirmation screen with alternative contact details & the case number as council is not responsible

Scenario: Graffiti - Telephone Box
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Telephone Box
        Then they get a confirmation screen with alternative contact details & the case number as council is not responsible

Scenario: Graffiti - Street Cabinet
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Street Cabinet
        Then they get a confirmation screen with alternative contact details & the case number as council is not responsible

Scenario: Graffiti - Train Station / Bridge
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Train Station / Bridge
        Then they get a confirmation screen with alternative contact details & the case number as council is not responsible

Scenario: Graffiti - Somewhere else
        Given User is on the Report Graffiti / Fly posting Page
        And they click on the next button after selecting the problem source as Somewhere else
        Then they get a confirmation screen with alternative contact details & the case number