Feature: create a new wiki
  In order to teach people about a politician word
  As an admin
  I want to create a new wiki

  @omniauth_test
  Scenario: when I'm logged in as admin
    Given I login as admin
    And I go to "the homepage"
    When I click "+Nova wiki"
    Then I should be in "the new wiki page"
    Given I fill "Palavra" with "Condimentum"
    And I fill "Descrição curta" with "Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
    And I fill "Descrição longa" with "Maecenas faucibus mollis interdum."
    When I press "Criar wiki"
    Then I should be in "this new wiki page"

  @omniauth_test @javascript
  Scenario: when the form is not valid
    Given I login as admin
    And I go to "the homepage"
    And I click "+Nova wiki"
    When I press "Criar wiki"
    Then I should see the error messages
