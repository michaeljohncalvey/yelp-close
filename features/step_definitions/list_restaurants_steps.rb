When(/^I go to the homepage$/) do
  visit '/restaurants/list'
end

Then(/^I should see the list of restaurants$/) do
  expect(page).to have_content("Restaurants")
end

Then(/^A restaurant-list class div must exist$/) do
  expect(page).to have_selector('div', :class => 'restaurant-list')
end

Then(/^I see a list of restaurants$/) do
  see_restaurant_details("Felix's Fiery Fish Fingers",
                          "Bluuuurb of felix's fiery fish fingers",
                          "desc of fish fingers",
                          "W1K2SE")
end

Given (/^a restaurant exists$/) do
  add_restaurant("Felix's Fiery Fish Fingers",
                          "Bluuuurb of felix's fiery fish fingers",
                          "desc of fish fingers",
                          "W1K2SE")
end
