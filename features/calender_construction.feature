Feature: Calender Construction
  In order to keep track of events in the campaign world
  As a Game Master
  I want to be able to create calenders with events

  Scenario: Creating Calenders
    Given I am a GM of the current campaign
    When I create a calender
    Then I should see a blank calender

  Scenario: Adding Events
    Given I am a GM of the current campaign
    And I am on a calender
    When I add an event to the timeline
    Then I should see the event in the calender
    And a blank event sheet should be added to the factsheets

  Scenario: Removing Events
    Given I am a GM of the current campaign
    And I am on a calender
    When I remove an event from the calender
    Then I should not see the event in the timeline
    And the event should be removed from the factsheets

  Scenario: Hiding Events
    Given I am a GM of the current campaign
    And I am on a calender
    When I mark an event as hidden
    Then players are not able to see that event

  Scenario: Giving Events Information
    Given I am a GM of the current campaign
    And I am on a calender
    When I click on an event
    Then I should be able to add information to the event

  Scenario: Linking Events to Maps
    Given I am a GM of the current campaign
    And I am on a calender
    When I click on an event
    Then I should be able to link the event to a location in a map