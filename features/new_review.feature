Feature: Add reviews from the view restaurant page

  Scenario: I can see a form for adding reviews
    Given a restaurant exists
    When I go to the view restaurant page
    Then I should see a form with ID add-review

  Scenario: Adding review
    Given a restaurant exists
    When I go to the view restaurant page
    And I fill out the review fields
    And I click the submit button
    Then I see my review on the page
