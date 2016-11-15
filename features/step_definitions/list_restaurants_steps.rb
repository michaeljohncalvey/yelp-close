
When(/^I go to the homepage$/) do
  Restaurant.create(name: "yo",description: "yoo", blurb: "yooo")
  visit '/restaurants/list'
end

Then(/^A restaurant-list class div must exist$/) do
  expect(page).to have_selector('div', :class => 'restaurant-list')
end


Then(/^I can click link for a restaurant$/) do
  expect(page).to have_content("yo")
  click_link ('1')
  expect(current_path).to eq '/restaurants/view/1'
end
