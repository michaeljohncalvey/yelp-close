Feature: See lists of restaurants on homepage

  Scenario: User can see list of restaurants
    When I go to the homepage
    Then I should see the list of restaurants

  Scenario: List container exists
    When I go to the homepage
    Then A restaurant-list class div must exist

  Scenario: User can see list of restaurants(not hardcoded)
    Given a restaurant exists
    When I go to the homepage
    Then I see a list of restaurants
