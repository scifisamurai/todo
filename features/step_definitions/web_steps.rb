Given(/^I am on the home page$/) do
  visit '/tasks'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

When(/^I click "(.*?)"$/) do |button|
  click_button(button)
end

Then(/^I should see "(.*?)"$/) do |text|
  assert page.has_content?(text)
end

Given(/^I am on the new task page$/) do
  visit '/tasks/new'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in(field, :with => value)
end

