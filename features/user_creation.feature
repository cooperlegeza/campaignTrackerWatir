Feature: User Creation
  In order to provide security and control of information
  As a potential user
  I should be able to create a user profile

  Scenario: Creating a New User
    When I select the register button
    And I add in my new user information
    Then I should be taken to my new user profile
