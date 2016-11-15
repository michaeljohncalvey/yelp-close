When (/^I go to the add form page$/) do
  visit 'restaurants/new'
end

Then(/^I can a see form with name, blurb and description fields$/) do
  expect(page).to have_field("name")
  expect(page).to have_field("blurb")
  expect(page).to have_field("description")
  expect(page).to have_button("Add Restaurant")
end
