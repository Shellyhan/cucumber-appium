@Android_Test
Feature: Test on search

  Scenario: Search by text and return results
    Given I land on Home screen
    When I click on the search button
    And I type in search string
    Then I should see results





