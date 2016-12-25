Project Structure:

Apps:	
        Contains application apk files and test servers created due to resigning of the .apk by calabash.

Build:
        Contains runtime test folders & files when execution is triggered by apache ant.

Config:
        Contains config files of the mobile properties indicationg phone model, OS version, unique id of the phone etc.

Reports:
        Contains cucumber html reports of the testcases executed.

Scripts:
        Contains .feature files for the test cases/ Behavior Driven Development (BDD)

Step Definitions:
        Contains definitions of the steps described in .feature files. The functions are defined using Ruby programming languages and calabash-android predefined steps.

build.xml:
        Contains the apache ant execution code with tags required to initialize the execution.

suites.xml:
        Contains test case suits with scenario names and test cases mapped with each scenario.


About build.xml:
	The main execution file required to start testing is build.xml.
It contains xml tags like <project>, <target>, <property>, <exec> etc to help initialization of environment and setup.
The default calabash-android run command as given by:
calabash-android run <apk_name>.apk --format html --out <report_name>_<timestamp>.html {features/names of feature files to be executed}

is mapped into xml tag which will read apk_file name, testsuite name and device name at runtime and start the execution.


Command to start test execution:
ant init run -Dsuite=<suite_name> -Ddevice=<phone_config_file_name> -Dtag=all