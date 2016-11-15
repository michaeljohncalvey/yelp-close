Feature: See lists of restaurants on homepage

  Scenario: User can see list of restaurants
    When I go to the homepage
    Then I should see the list of restaurants

  Scenario: List container exists
    When I go to the homepage
    Then A restaurant-list class div must exist
