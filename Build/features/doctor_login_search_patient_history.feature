Feature: Successful Patient Search By Doctor 

  Scenario: As a valid user I can register to my application
    Given my application is open
    Then I see "Doctor"
	Then I hide the keyboard
	Then I click on "RoleSwitch" button to register the doctor
	Then I enter "shreyas.patil91@gmail.com" in the "LoginEmail" field
	Then I enter "abcd" in the "LoginPassword" field
	Then I press the "Login" button
	Then I should see text containing "Search Patient :"
	Then I wait for 5 seconds
	Then I enter "1111" in the "SearchButtonBar" field
	Then I click on element with id "SearchButton"
	Then I should see element with id "ContactFamilyButton"
	Then I click on element with id "DoctorLogout"
	Then I see "Login"