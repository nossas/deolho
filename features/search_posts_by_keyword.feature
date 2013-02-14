Feature: search posts by keyword
  
  Scenario: when there is no post
    Given I go to "the homepage"
    And I fill "Buscar por" with "teste"
    When I press "Buscar"
    Then I should see a message saying that no post were found

  Scenario: when there is at least one post
    Given there is a post called "Teste de busca"
    And there is a post called "Cade zaza?"
    And I go to "the homepage"
    And I fill "Buscar por" with "teste"
    When I press "Buscar"
    Then I should see the post called "Teste de busca"
    And I should not see the post called "Cade zaza?"
