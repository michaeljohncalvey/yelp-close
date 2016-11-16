When(/^I go to the view restaurant page$/) do
  visit('/restaurants/view/1')
end

And(/^I fill out the review fields$/) do
  fill_in_review_form(5, "Lovely")
end

Then(/^I see my review on the page$/) do
  expect(page).to have_content(5)
  expect(page).to have_content("Lovely")
end
