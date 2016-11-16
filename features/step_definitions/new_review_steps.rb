When(/^I go to the view restaurant page$/) do
  visit('/restaurants/view/1')
end

Then(/^I should see a form with ID {id}$/) do |id|
  begin
    element = find_by_id(id.to_s)
  rescue Capybara::ElementNotFound
  end
  expect(element).not_to be_nil
end
