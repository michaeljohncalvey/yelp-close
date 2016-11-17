Then(/^I should see only one restaurant$/) do
  expect(page).to have_content("desc of doner kebabs", count: 1)
end
