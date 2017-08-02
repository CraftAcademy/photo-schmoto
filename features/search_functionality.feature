Feature: Search Functionality
  As a user,
  In order to filter the images
  I should be able to search

Background:
  Given that i am on the landing page
  #And save and open page
  And there is a field "search-field"
  Given The following photos exist
    | title   | price   | image_path                              |
    | Sporty1 | 30      | http://lorempixel.com/400/200/sports/1/ |
    | Sporty2 | 40      | http://lorempixel.com/400/200/sports/2/ |
    | Sporty3 | 50      | http://lorempixel.com/400/200/sports/3/ |
    | Sporty4 | 60      | http://lorempixel.com/400/200/sports/4/ |


Scenario:
  #And save and open page
  When I fill in "search_field" with "Sporty1"
  And I click "search" button
  Then I should see "Sporty1"
  Then I should not see "Sporty2"
