Feature: Do Some things
  In order to do something
  As a user
  I want to do something

  Scenario: Do Something
    Given I have "something"
    When I have "something"
    Then I should have "something"
    And I should have "something"
    But I should not have "something"

  Scenario: OpenConfigFile
    Given I am in buffer "*scratch*"
    When I press "C-c I"
    Then I should be in buffer "config.org"
