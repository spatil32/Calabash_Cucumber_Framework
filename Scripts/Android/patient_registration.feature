Feature: Patient Registration & Login

  Scenario: As a valid user Patient can register & login to my application
    Given my application is open
    Then I see "Patient"
	Then I hide the keyboard
	Then I press the "Register" button
	Then I see "Registration Form"
	Then I enter "Shreyas" in the "PatientFName" field
	Then I enter "Patil" in the "PatientLName" field
	Then I enter "12345" in the "PatientSSN" field
	Then I enter "patilsr91@gmail.com" in the "PatientEmail" field
	Then I scroll down till element with id "PatientCPassword" appears
	Then I enter "1111" in the "PatientContact" field
	Then I enter "3128891919" in the "PatientEContact" field
	Then I enter "abcd" in the "PatientPassword" field
	Then I enter "abcd" in the "PatientCPassword" field
	Then I press the "Register" button
	Then I see "Login"
	Then I see "Patient"
	Then I hide the keyboard
	Then I enter "patilsr91@gmail.com" in the "LoginEmail" field
	Then I enter "abcd" in the "LoginPassword" field
	Then I press the "Login" button
	Then I should see "Shreyas"
	Then I scroll down
	Then I should see "Patil"
	Then I should see "12345"
	Then I should see "patilsr91@gmail.com"
	Then I should see "1111"
	Then I should see "3128891919"
	Then I should see "abcd"
	Then I press the "Logout" button
	Then I should see "Login"