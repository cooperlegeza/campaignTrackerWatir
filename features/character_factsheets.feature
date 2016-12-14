Feature: Character Factsheets
  In order to keep track of in world facts
  As a player
  I should be able to have a factsheet relating to my character

  Scenario: Creating a Factsheet
    Given I am a player in the current campaign
    When I create a factsheet
    Then A blank factsheet should be displayed

  Scenario: Adding to a Factsheet
    Given I am a player in the current campaign
    And I am on one of my character's factsheets
    When I add information to the factsheet
    Then those changes should reflect on the factsheet

  Scenario: Linking Factsheets to Map Features
    Given I am a player in the current campaign
    And I am on one of my character's factsheets
    When I click on an event
    Then I should be able to add information to the event