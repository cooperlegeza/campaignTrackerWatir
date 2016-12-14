Feature: Map Reading
  In order to retrieve information about the game world
  As a player or GM
  I should be able to read the maps of the world I have access to

  Scenario: Reading Map
    Given I have access to the world
    When I click on a map
    Then I should be able to see the map features