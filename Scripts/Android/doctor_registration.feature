Feature: Doctor Registration

  Scenario: As a valid user Doctor can register to my application
    Given my application is open
    Then I see "Doctor"
	Then I hide the keyboard
	Then I click on "RoleSwitch" button to register the doctor
	Then I press the "Register" button 
	Then I see "Registration Form"
	Then I enter "Mercy" in the "HospitalName" field
	Then I enter "East 33rd" in the "HospitalAddress" field
	Then I enter "Sujay Gunjal" in the "DoctorFName" field
	Then I enter "2222" in the "DoctorSSN" field
	Then I scroll down till element with id "DoctorContact" appears
	Then I enter "shreyas.patil91@gmail.com" in the "DoctorEmail" field
	Then I enter "abcd" in the "DoctorPassword" field
	Then I enter "abcd" in the "DoctorCPassword" field
	Then I enter "3333" in the "DoctorContact" field
	Then I press the "Register" button
	Then I wait up to 30 seconds for "Doctor Registered." to appear
	Then I see "Login"
	Then I see "Doctor"
	Then I hide the keyboard
	Then I enter "shreyas.patil91@gmail.com" in the "LoginEmail" field
	Then I enter "abcd" in the "LoginPassword" field
	Then I press the "Login" button