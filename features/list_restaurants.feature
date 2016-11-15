Feature: See lists of restaurants on homepage

  Scenario: List container exists
    When I go to the homepage
    Then A restaurant-list class div must exist

  Scenario: Each listing has button to view
    When I go to the homepage
    Then I can click link for a restaurant
