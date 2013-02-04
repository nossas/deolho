Feature: login via Facebook
  In order to do admin stuff
  As an admin
  I want to login via Facebook

  @omniauth_test
  Scenario: I'm an admin
    Given I login as admin
    When I go to "the homepage"
    Then I should see my profile panel
