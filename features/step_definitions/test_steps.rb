
When(/^I visit the site$/) do
  visit '/'
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^show me the page$/) do
  save_and_open_page
end

And(/^I click "([^"]*)"$/) do |link|
  click_link_or_button link
end

And(/^I click the "([^"]*)" button$/) do |button|
  click_button button
end

Given(/^that there are no users in the system$/) do
  User.first.destroy if User.any?
end

And(/^the following users exist$/) do |table|
  table.hashes.each do |user_instance|
    User.create(user_instance)
  end
end