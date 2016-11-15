When (/^I go to the add form page$/) do
  visit 'restaurants/new'
end

Then(/^I can a see form with name, blurb and description fields$/) do
  expect(page).to have_field("restaurant[name]")
  expect(page).to have_field("restaurant[blurb]")
  expect(page).to have_field("restaurant[description]")
  expect(page).to have_button("Add Restaurant")
end

And (/^I add the details of my restaurant$/) do
  fill_in "restaurant[name]", with: "Bob's Burgers"
  fill_in "restaurant[blurb]", with: "Simply the best burgers in town"
  fill_in "restaurant[description]", with: "Real American burgers, right to yourt mouth"
end

And (/^I click on the Add Restaurant button$/) do
  click_button "Add Restaurant"
end

Then (/^I will see my restaurant on the main page$/) do
  expect(page).to have_content("Bob's Burgers")
  expect(page).to have_content("Simply the best burgers in town")
end
