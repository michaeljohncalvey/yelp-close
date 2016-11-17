Feature: Add new restaurant

  Background:
    Given I am signed up

  Scenario:
    As an Owner
    So other people can rate my restaurant
    I want to be able to create a restaurant with a name and description

  Scenario: Owner can go to add restaurant from main page
    When I go to the homepage
    And I click the New Restaurant button
    Then I can a see form with name, blurb and description fields

  Scenario: Owner sees add restaurant form
    When I go to the new restaurant page
    Then I can a see form with name, blurb and description fields

  Scenario: Owner can see newly created restaurant
    When I go to the new restaurant page
    And I add the details of my restaurant
    And I click the Add Restaurant button
    Then I will see my restaurant on the main page
