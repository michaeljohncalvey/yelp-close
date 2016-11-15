When(/^I go to the homepage$/) do
  visit '/restaurants/list'
end

Then(/^I should see the list of restaurants$/) do
  expect(page).to have_content("Mike's restaurant")
end
