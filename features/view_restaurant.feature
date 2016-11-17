Feature: Viewing restaurant page

  Background:
    Given 2 restaurants exist
    When I go to the restaurant page

  Scenario: View a single restaurant
    Then I should see only one restaurant

  Scenario: Delete restaurant
    And I click the delete button
    When I go to the homepage
    Then I should see only one restaurant
