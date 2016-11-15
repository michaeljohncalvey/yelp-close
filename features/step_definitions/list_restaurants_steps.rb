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
  see_restaurant_details("Dio's Develish Doner Kebabs",
                          "Bluuuurb of Dio's Develish Kebabs",
                          "desc of doner kebabs",
                          "W7K2SD")
end

Given (/^a restaurant exists$/) do
  add_restaurant("Dio's Develish Doner Kebabs",
                          "Bluuuurb of Dio's Develish Kebabs",
                          "desc of doner kebabs",
                          "W7K2SD")
end
