
####################################
#              CHECKS              #
####################################

Then /^I can access (\w+) WEBSITE page$/ do |site_name|
  AbbottPlate::HomePage.open
end

Then /^I can access (\w+) CMS page$/ do |site_name|
  AbbottPlate::LoginPage.open
end