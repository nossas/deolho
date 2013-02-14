Feature: view a wiki word
  In order to get smarter
  As a visitor
  I want to view a wiki word

  Scenario:
    Given there is a wiki word
    When I go to "this wiki word page"
    Then I should see the wiki word
    And I should see the wiki word description
