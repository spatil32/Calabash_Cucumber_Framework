require 'calabash-android/calabash_steps'
require 'pry'

Given /^my application is open$/ do
	@utils = Utils.new
	puts "Test Started!"
end

Then /^I hide the keyboard$/ do
	hide_soft_keyboard
end

Then /^I click on "([^\"]*)" button to register the doctor$/ do |roleSwitch|
	role = @utils.getValueFromOR(roleSwitch)
	var = query("* id:'#{role}'")
	if not var.nil?
		touch(var)
	end
end

Then /^I enter "([^\"]*)" in the "([^\"]*)" field$/ do |text, field|
	input = @utils.getValueFromOR(field)
	var = query("* id:'#{input}'")
	if not var.nil?
		touch(var)
		keyboard_enter_text "#{text}"
		step %{I hide the keyboard}
	end
end

Then /^I click on element with id "([^\"]*)"$/ do |field|
	element = @utils.getValueFromOR(field)
	var = query("* id:'#{element}'")
	if not var.nil?
		touch(var)
	end
end

Then /^I should see element with id "([^\"]*)"$/ do |field|
	element = @utils.getValueFromOR(field)
	var = query("* id:'#{element}'")
	if var.nil?
		raise 'Element not found.'
	end
end

Then /^I scroll down till element with id "([^\"]*)" appears$/ do |field|
	element = @utils.getValueFromOR(field)
	var = query("* id:'#{element}'")
	while var.empty? or var.nil? do
		perform_action('drag', 50, 50, 90, 80, 10)
	end
end

Then /^I scroll down till element with text "([^\"]*)" appears$/ do |field|
	var = query("* marked:'#{field}'")
	while var.empty? do
		var = query("* marked:'#{field}'")
		perform_action('drag', 50, 50, 90, 80, 10)
	end
end

Then /^I wait for "([^\"]*)" toast message to appear$/ do |toast|  
	var = query("* id:'message'")[0]['text']
	if not var.eql? toast
		raise "Toast message not verified."
	end
end