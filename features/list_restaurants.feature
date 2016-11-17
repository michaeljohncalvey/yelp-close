Feature: See lists of restaurants on homepage

  Scenario: List container exists
    When I go to the homepage
    Then A restaurant-list class div must exist


  Scenario: Each listing has button to view
    Given 1 restaurant exists
    When I go to the homepage
    Then I can click link for a restaurant

  Scenario: User can see list of restaurants(not hardcoded)
    Given 1 restaurant exists
    When I go to the homepage
    Then I see a list of restaurants

  Scenario: Each listing has a link back to all restaurants list
    Given 1 restaurant exists
    When I go to the homepage
    Then I can click link for a restaurant
    Then I can view a restaurant that has link to take my back to all lists
