Feature: view a random wiki word
  In order to get smarter
  As a visitor
  I want to view a random wiki word

  Scenario: when there is one wiki word
    Given there is a wiki word
    When I go to "the homepage"
    Then I should see this word in wiki widget
