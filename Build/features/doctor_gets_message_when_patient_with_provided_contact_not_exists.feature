Feature: Doctor Gets Message When Patient With Provided Contact Not Exists

  Scenario: Doctor Gets Message When Patient With Provided Contact Not Exists
    Given my application is open
    Then I see "Doctor"
	Then I hide the keyboard
	Then I click on "RoleSwitch" button to register the doctor
	Then I enter "shreyas.patil91@gmail.com" in the "LoginEmail" field
	Then I enter "abcd" in the "LoginPassword" field
	Then I press the "Login" button
	Then I should see text containing "Search Patient :"
	Then I wait for 5 seconds
	Then I enter "12345" in the "SearchButtonBar" field
	Then I click on element with id "SearchButton"
	Then I wait for "Patient with this number doesn't exist." toast message to appear