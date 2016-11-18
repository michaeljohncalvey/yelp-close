Feature: Viewing restaurant page

  Background:
    Given 2 restaurants exist
    Given I am signed up
    When I go to the restaurant page

  Scenario: View a single restaurant
    Then I should see only one restaurant
