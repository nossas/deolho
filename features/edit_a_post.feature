Feature: edit a post

  @omniauth_test
  Scenario: when I'm an admin
    Given I login as admin
    And there is a post
    When I go to "this post page"
    Then I should see the edit post link
    Given I click "Editar post"
    And I fill "Título" with "Teste de edição"
    When I press "Atualizar Post"
    Then I should be in "this post page"
    And the post title should be "Teste de edição"
