
####################################
#              CHECK               #
####################################

When /^I fill in the Register form's fields$/ do |table_data|
  AbbottPlate::LoginPage.given.fill_in_form(table_data.rows_hash.symbolize_keys)
end

And /^I click the Register button$/ do
  AbbottPlate::LoginPage.given.register_click
end

When /^I click the proceed button$/ do
	AbbottPlate::LoginPage.given.proceed_click
end

When /^I check the agreement checkbox$/ do
	AbbottPlate::LoginPage.given.checkbox_click
end

####################################
#              ACTION              #
####################################

Then /^I should see an error message5$/ do
  AbbottPlate::LoginPage.given.error_message5.should be_visible
end

Then /^I should see an error message6$/ do
  AbbottPlate::LoginPage.given.error_message6.should be_visible
end

Then /^I should see an error message7$/ do
  AbbottPlate::LoginPage.given.error_message7.should be_visible
end

Then /^I should see an confirmation message$/ do
	AbbottPlate::LoginPage.given.confirm_message.should be_visible
end

Then /^I should see an error message$/ do

end


Then /^I should be redirected to Register Page$/ do
	#AbbottPlate::RegisterPage.open
end
