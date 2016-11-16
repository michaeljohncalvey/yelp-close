When (/^I go to the add form page$/) do
  visit 'restaurants/new'
end

Then(/^I can a see form with name, blurb and description fields$/) do
  expect(page).to have_field("restaurant[name]")
  expect(page).to have_field("restaurant[blurb]")
  expect(page).to have_field("restaurant[description]")
  expect(page).to have_field("restaurant[postcode]")
  expect(page).to have_button("Add Restaurant")
end

And (/^I add the details of my restaurant$/) do
  fill_in_restaurant_form("Felix's Fiery Fish Fingers",
                          "Bluuuurb of felix's fiery fish fingers",
                          "desc of fish fingers",
                          "W1K2SE")
end

And (/^I click on the Add Restaurant button$/) do
  click_button "Add Restaurant"
end

Then (/^I will see my restaurant on the main page$/) do
  see_restaurant_details("Felix's Fiery Fish Fingers",
                          "Bluuuurb of felix's fiery fish fingers",
                          "desc of fish fingers",
                          "W1K2SE")
end

When (/^I am on the main page$/) do
  visit "/restaurants/list"
end

And (/^I click the New Restaurant button$/) do
  click_button "New Restaurant"
end
