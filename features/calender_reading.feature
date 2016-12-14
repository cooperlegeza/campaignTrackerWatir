Feature:
  In order to ascertain information about the events of the world
  As a player or GM
  I should be able to read a calender and its events

  Scenario: Reading an Event
    Given I am on the campaign calender
    When I click on an event
    Then the event's information should be displayed

  Scenario: Transfer to Map
    Given I am on the campaign calender
    When I click on an event
    Then I should be able to go to the event's location in the map

