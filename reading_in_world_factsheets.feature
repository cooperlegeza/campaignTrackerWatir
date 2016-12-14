Feature: Reading in-world factsheets
  In order to retrieve information about the world
  As a player or GM
  I should be able to read the factsheets about the world

  Scenario: Reading factsheets
    Given I have access to a factsheet
    When I select the factsheet
    Then I should be able to see the information on that factsheet