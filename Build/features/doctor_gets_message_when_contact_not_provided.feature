Feature: Doctor gets message when contact not provided

  Scenario: Doctor gets message when contact not provided
    Given my application is open
    Then I see "Doctor"
	Then I hide the keyboard
	Then I click on "RoleSwitch" button to register the doctor
	Then I enter "shreyas.patil91@gmail.com" in the "LoginEmail" field
	Then I enter "abcd" in the "LoginPassword" field
	Then I press the "Login" button
	Then I should see text containing "Search Patient :"
	Then I wait for 5 seconds
	Then I enter "" in the "SearchButtonBar" field
	Then I click on element with id "SearchButton"
	Then I wait up to 30 seconds for "Please Enter Contact" to appear