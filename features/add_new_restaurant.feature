Feature: Add new restaurant
As an Owner
So other people can rate my restaurant
I want to be able to create a restaurant with a name and description

Scenario: Owner sees add restaurant form
When I go to the add form page
Then I can a see form with name, blurb and description fields

Scenario: Owner can see newly created restaurant
When I go to the add form page
And I add the details of my restaurant
And I click on the Add Restaurant button
Then I will see my restaurant on the main page
