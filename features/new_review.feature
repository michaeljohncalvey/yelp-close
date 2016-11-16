Feature: Add reviews from the view restaurant page

  Scenario: I can see a form for adding reviews
    Given 1 restaurant exists
    When I go to the view restaurant page
    Then I should see a form element with ID "new_review"

  Scenario: Adding review
    Given 1 restaurant exists
    When I go to the view restaurant page
    And I fill out the review fields
    And I click the Add Review button
    Then I see my review on the page
