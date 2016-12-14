Given(/^I am a GM of the current campaign$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I create a calender$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a blank calender$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^I am on a calender$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I add an event to the timeline$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the event in the calender$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

And(/^a blank event sheet should be added to the factsheets$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I remove an event from the timeline$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see the event in the calender$/) do
  pending #TODO: Write page object
  on_page 
end

And(/^the event should be removed from the factsheets$/) do
  pending #TODO: Write page object
  on_page Calender do |page|
    page.factsheets
  end

  on_page FactsheetsHome do |page|
    expect(page.factsheet_titles).to not_include @title
  end
end

When(/^I mark an event as hidden$/) do
  pending #TODO: Write page object
  on_page Calender do |page|
    page.first_event
    page.make_hidden
  end
end

Then(/^players are not able to see that event$/) do
  pending #TODO: Write page object
  on_page Calender do |page|
    page.logout
    page.login
  end

  on_page LoginPage do |page|
    page.username = PLAYER_USERNAME
    page.password = PLAYER_PASSWORD
  end

  on_page HomePage do |page|
    page.calenders
  end

  on_page CalendersHome do |page|
    page.calender
  end

  on_page Calender do |page|
    expect(page.event_titles).to not_include THE_FINAL_BATTLE
  end
end

When(/^I click on an event$/) do
  pending #TODO: Write page object
  on_page Calender do |page|
    page.first_event
  end
end

Then(/^I should be able to add information to the event$/) do
  pending #TODO: Write page object
  on_page Calender do |page|
    page.add_event_title = THE_FINAL_BATTLE
    page.add_event_chars(THE_MAJOR_PLAYERS)
    page.add__event_description = THE_FINAL_BATTLE_DESC

    expect(page.event_title).to eq THE_FINAL_BATTLE
    expect(page.event_chars).to match_array THE_MAJOR_PLAYERS
    expect(page.event_description).to eq THE_FINAL_BATTLE_DESC
  end
end

Then(/^I should be able to link the event to a location in a map$/) do
  pending #TODO: Write page object
  on_page Calender do |page|
    page.add_location = THE_TOWER
    expect(page.first_location).to eq THE_TOWER
  end
end