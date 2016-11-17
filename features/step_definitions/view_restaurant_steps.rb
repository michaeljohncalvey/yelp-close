Then(/^I should see only one restaurant description$/) do
  expect(page).to have_content("desc of doner kebabs", count: 1)
end
