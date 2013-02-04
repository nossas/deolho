Feature: see the last post highlighted
  In order to stay tune with the news
  As a visitor
  I want to see the last post highlighted

  Scenario: there are three posts
    Given there is 3 posts
    When I go to "the homepage"
    Then the last post should be in highlight
