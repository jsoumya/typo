# Feature: Create Categories
#   As a blog admin
#   In order to share my thoughts with the world
#   I want to be able to add articles to my blog

#   Background:
#     Given the blog is set up
#     And I am logged into the admin panel
    
#   Scenario: Successfully create categories
#     Given I am on the new categories page
#     When I fill in "category_name" with "Foo"
#     And I fill in "category_keyword" with "Bar"
#     And I fill in "category_permalink" with "Chick"
#     And I fill in "category_description" with "Egg"
#     And I press "Save"
#     Then I should be on the admin content page
#     Then I should see "Foo"
#     Then I should see "Bar"
#     Then I should see "Chick"
#     Then I should see "Egg"


Feature: Create and Edit Categories
    As a blog administrator
    In order to organize blog articles
    I want to be able to create new categories and assign articles to them

    Background:
        Given the blog is set up
        And I am logged into the admin panel
        When I follow "Categories"

    Scenario: Link should not be broken
        Then I should see "Categories"
        And I should see "Permalink"
        And I should see "General"
        And I should see "Name"
        And I should see "Keywords"

    Scenario: It should be possible to create new categories
        When I fill in "Name" with "Love"
        When I fill in "Keywords" with "love,sex,lust"
        When I fill in "Permalink" with "love"
        When I fill in "Description" with "Life is to Love"
        And I press "Save"
        Then I should see "Love"
        And I should see "no articles"
        And I should see "love,sex,lust"
        And I should see "love"
        And I should see "Life is to Love"

    Scenario: It should be possible to edit existing categories
        When I follow "General"
        Then I fill in "Keywords" with "general,ideas"
        And I fill in "Description" with "test1"
        
        And I press "Save"
        Then I should see "general,ideas"
        Then I should see "test1"