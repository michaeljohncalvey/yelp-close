Feature: Modifying the restaurant details as an owner

  Background:
    Given 2 restaurants exist
    Given I am signed in
    When I go to the restaurant page

  Scenario: Delete restaurant
    And I click the delete button
    When I go to the homepage
    Then I should see only one restaurant

  Scenario: See button to modify a restaurant's description and blurb
    Then I should see a form element with ID "modify"

  Scenario: Can modify the restaurant's description and blurb and see the changes
    Then I can see the hardcoded reviews
    And I click the edit button
    Then I can modify a restaurant's description
    And I click the update button
    Then I see the new modified changes

  Scenario: Cannot review own restaurant
