@Register
Feature: AbbottPlate Register testing

  Background:
    Given AbbottPlate Login page

  @register_successfully
  Scenario: Register successfully
    When I fill in the Register form's fields
      | Email         |      1234699bbbb@1234699bb.com   |
      | MobileNumber  |        88977766            |
    And I click the Register button
    Then I should see an confirmation message
    When I click the proceed button
    Then I should see an error message
    When I check the agreement checkbox 
    When I click the proceed button
    Then I should be redirected to Register Page

  @invalid_register_1
  Scenario: Error cases - missing email and mobilenumber
    When I fill in the Register form's fields
      | Email         |                      |
      | MobileNumber  |                      |
    And I click the Register button
    Then I should see an error message5

  @invalid_register_2
  Scenario: Error cases - missing mobilenumber
    When I fill in the Register form's fields
      | Email         | a@a.com              |
      | MobileNumber  |                      |
    And I click the Register button
    Then I should see an error message6

  @invalid_register_3
  Scenario: Error cases - missing email
    When I fill in the Register form's fields
      | Email         |                      |
      | MobileNumber  |        87664320      |
    And I click the Register button
    Then I should see an error message5

  @invalid_register_4
  Scenario: Error cases - invalid email and mobilenumber
    When I fill in the Register form's fields
      | Email         |         Email        |
      | MobileNumber  |      MobileNumber    |
    And I click the Register button
    Then I should see an error message6
  @invalid_register_5
  Scenario: Error cases - existing email and mobilenumber
    When I fill in the Register form's fields
      | Email         | e_mail126rjw@126.com |
      | MobileNumber  |        87654320      |
    And I click the Register button
    Then I should see an error message7
