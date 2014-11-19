@edit
Feature: AbbottPlate Edit Module testing

  Background:
    Given I open the login page and I logon
    When I access to the edit module

  @edit_breakfast
  Scenario: edit breakfast successfully
    When I click Breakfast button
    And I click one of the picture
    And I click one of foods
    And I click Add button
    And I click Edit Button
    And I click one of arrow
    And I click Save button
    Then you should see the foods you added
  @edit_lunch
  Scenario: edit lunch successfully
    When I click Lunch button
    And I click one of the picture
    And I click one of foods
    And I click Add button
    And I click Edit Button
    And I click one of arrow
    And I click Save button
    Then you should see the foods you added
  @edit_dinner
  Scenario: edit dinner successfully
    When I click Dinner button
    And I click one of the picture
    And I click one of foods
    And I click Add button
    And I click Edit Button
    And I click one of arrow
    And I click Save button
    Then you should see the foods you added
  @edit_snacks
  Scenario: edit snacks successfully
    When I click Snacks button
    And I click one of the picture
    And I click one of foods
    And I click Add button
    And I click Edit Button
    And I click one of arrow
    And I click Save button
    Then you should see the foods you added