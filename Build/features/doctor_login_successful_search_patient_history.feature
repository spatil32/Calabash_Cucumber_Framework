Feature: Successful Patient Medical History Search

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
	Then I scroll down till element with text "Cold" appears
	Then I scroll down till element with text "Benadryl: Diphenhydramine: Benadryl: Chlorpheniramine" appears
	Then I scroll down till element with text "Anxiety" appears
	Then I scroll down till element with text "Xanax: Ativan: Valium" appears
	Then I scroll down till element with text "Asthma" appears
	Then I scroll down till element with text "Singulair: Aerobid: Dulera" appears
	Then I scroll down till element with text "Bronchitis" appears
	Then I scroll down till element with text "Augmentin: Zithromax: Doxycycline: Amoxil" appears
	Then I scroll down till element with text "Cancer" appears
	Then I scroll down till element with text "Cytoxan: Adrucil: Ethyol: Leukeran" appears
	Then I click on element with id "DoctorLogout"
	Then I see "Login"
	