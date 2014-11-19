@login
Feature: AbbottPlate login testing

  Background:
    Given AbbottPlate Login page

  @login_successfully
  Scenario: Login successfully
    When I fill in the Login form's fields
      | Email         | e_mail126rjw@126.com |
      | MobileNumber  |        87654320      |
    And I click the Login button
    Then I should be redirected to the Dashboard

  @invalid_login_1
  Scenario: Error cases - missing email and mobilenumber
    When I fill in the Login form's fields
      | Email         |                      |
      | MobileNumber  |                      |
    And I click the Login button
    Then I should see an error message1

  @invalid_login_2
  Scenario: Error cases - missing mobilenumber
    When I fill in the Login form's fields
      | Email         | e_mail126rjw@126.com |
      | MobileNumber  |                      |
    And I click the Login button
    Then I should see an error message2

  @invalid_login_3
  Scenario: Error cases - missing email
    When I fill in the Login form's fields
      | Email         |                      |
      | MobileNumber  |        87654320      |
    And I click the Login button
    Then I should see an error message1

  @invalid_login_4
  Scenario: Error cases - invalid email and mobilenumber
    When I fill in the Login form's fields
      | Email         |         Email        |
      | MobileNumber  |      MobileNumber    |
    And I click the Login button
    Then I should see an error message4