Feature: subscribe for newsletter
  
  @javascript
  Scenario: when I'm subscribing for the first time
    Given I go to "the homepage"
    When I click "Receber atualizações por email"
    Then I should see the subscription form
    Given I fill "Email" with "nicolas@engage.is"
    When I press "Enviar"
    Then I should see the subscription congrats message
