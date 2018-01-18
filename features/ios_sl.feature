@iOS_Test
Feature: Test on calculator

  Scenario: Check addition work
    Given I land on the Home screen
    When I enter two numbers
    And I click the sum up button
    Then I should see the result
