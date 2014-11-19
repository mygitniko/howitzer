#############################################################
#                      PREREQUISITES                        #
#############################################################
Given /^(\w+) Home page$/ do |site_name|
  if site_name == 'AbbottPlate'
    AbbottPlate::HomePage.open
  end
end

Given /^(\w+) Login page$/ do |site_name|
  if site_name == 'AbbottPlate'
    AbbottPlate::LoginPage.open
  end
end

Given /^I open the login page and I logon$/ do
  AbbottPlate::LoginPage.open
  AbbottPlate::LoginPage.given.login("e_mail126rjw@126.com", "87654320")
  log.info "You are logged in."
end

# #Given /^(\w+) Forgot Password page$/ do |site_name|
# ##  if site_name == 'Abbott'
#     AbbottPlate::ForgotPasswordPage.open
#   end
# end
