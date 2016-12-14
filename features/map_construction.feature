Feature: Map Construction
  In order to provide information about the world
  As a Game Master (GM)
  I want to be able to create maps of the campaign world

  Scenario: Creating Maps
    Given I am a GM of the current campaign
    When I create a map
    Then I should see a map with all blank features

  Scenario: Changing Map Features
    Given I am a GM of the current campaign
    And I am on a map
    When I change a map feature
    Then that change should be reflected on the map

  Scenario: Changing Map Size
    Given I am a GM of the current campaign
    And I am on a map
    When I change the map size
    Then the map's new size should reflect that

  Scenario: Hiding Map Features
    Given I am a GM of the current campaign
    And I am on a map
    When I hide a map feature
    Then non-GMs of the current campaign should not be able to see that feature

  Scenario: Linking Map Features To Factsheets
    Given I am a GM of the current campaign
    And I am on a map
    When I select a map feature
    Then I should be able to link that map feature to a factsheet

  Scenario: Linking Map Features to Calenders
    Given I am a GM of the current campaign
    And I am on a map
    When I select the map feature
    Then I should be able to link the map feature to one or more calender events