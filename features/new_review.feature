Feature: Add reviews from the view restaurant page

  Background:
    Given 1 restaurant exists
    Given I am signed up

  Scenario: I can see a form for adding reviews
    When I go to the restaurant page
    Then I should see a form element with ID "new_review"

  Scenario: Adding review
    When I go to the restaurant page
    And I fill out the review fields
    And I click the Add Review button
    Then I see my review on the page
