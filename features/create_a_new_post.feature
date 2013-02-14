Feature: create a new post
  In order to inform people about an important subject
  As an admin
  I want to create a new post

  @omniauth_test
  Scenario: when the form is valid
    Given I login as admin
    And I go to "the homepage"
    When I click "+Novo post"
    Then I should be in "the new post page"
    Given I fill "Título" with "Tiririca conta piada para Romário durante eleição na Câmara"
    And I fill "Texto" with "Um momento de descontração durante votação para disputa de novo presidente da Câmara dos Deputados"
    And I select an image for the post
    When I press "Criar Post"
    Then I should be in "this new post page"

  @omniauth_test @javascript
  Scenario: when the form is not valid
    Given I login as admin
    And I go to "the homepage"
    And I click "+Novo post"
    When I press "Criar Post"
    Then I should see the error messages
