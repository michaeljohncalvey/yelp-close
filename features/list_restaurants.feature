Feature: See lists of restaurants on homepage

  Scenario: List container exists
    When I go to the homepage
    Then A restaurant-list class div must exist


  Scenario: Each listing has button to view
    Given a restaurant exists
    When I go to the homepage
    Then I can click link for a restaurant

  Scenario: User can see list of restaurants(not hardcoded)
    Given a restaurant exists
    When I go to the homepage
    Then I see a list of restaurants
