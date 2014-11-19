
####################################
#              CHECK               #
####################################

When /^I fill in the Login form's fields$/ do |table_data|
  AbbottPlate::LoginPage.given.fill_in_form(table_data.rows_hash.symbolize_keys)
end

And /^I click the Login button$/ do
  AbbottPlate::LoginPage.given.submit_form
end

####################################
#              ACTION              #
####################################

Then /^I should see an error message1$/ do
  AbbottPlate::LoginPage.given.error_message1
end

Then /^I should see an error message2$/ do
  AbbottPlate::LoginPage.given.error_message2
end

Then /^I should see an error message4$/ do
  AbbottPlate::LoginPage.given.error_message4
end

Then /^I should be redirected to the Dashboard$/ do
  #  AbbottPlate::DashboardPage.wait_for_opened

end






