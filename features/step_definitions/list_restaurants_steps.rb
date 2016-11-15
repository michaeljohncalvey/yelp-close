
When(/^I go to the homepage$/) do
  visit '/restaurants/list'
end

Then(/^I should see the list of restaurants$/) do
  expect(page).to have_content("Mike's restaurant")
end

Then(/^A restaurant-list class div must exist$/) do
  expect(page).to have_selector('div', :class => 'restaurant-list')
end

Then(/^I see a list of not hardcoded restaurants$/) do
  expect(page).to have_content("Felix's Firey Fish Fingers")
  expect(page).to have_content("It's one of the best, the food is so fiery, the food is so great.")
  expect(page).to have_content("An amazingly arduous amorphous adventure")
end
