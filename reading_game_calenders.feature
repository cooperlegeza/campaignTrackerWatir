Feature: Calender Reading
  In order to retrieve information about the game world
  As a player or GM
  I should be able to read the calenders of the world I have access to

  Scenario: Reading a calender
    Given I have access to the calender
    When I select the calender
    Then I should be able to see the events on the calender

  Scenario: Reading Events on a Calender
    Given I am on a calender
    When I select an event on the calender
    Then I should be able to see the event's information