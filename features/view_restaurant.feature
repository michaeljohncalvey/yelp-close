Feature:

  Scenario: view a single restaurant
    Given 2 restaurants exist
    When I go to the restaurant page
    Then I should see only one restaurant description
