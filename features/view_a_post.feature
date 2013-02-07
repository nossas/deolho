Feature: view a post
  In order to be more informed
  As a visitor
  I want to view a post

  Scenario: 
    Given there is a post
    When I go to "this post page"
    Then I should see all the content about this post
