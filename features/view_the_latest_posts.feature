Feature: view the latest posts
  In order to stay up to date
  As a visitor
  I want to view the latest posts

  Scenario: when there is some posts
    Given there is 4 posts
    When I go to "the homepage"
    Then I should see 3 posts in the latest posts list
