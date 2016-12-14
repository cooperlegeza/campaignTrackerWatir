Feature:
  In order to allow multiple campaigns in a single world
  As a Game Master
  I should be able to create campaigns in that world

  Scenario: Campaign Creation
    Given I am a Game Master
    When I create a campaign
    Then I am taken to the campaign home screen for the new campaign