Feature: As a user,
  In order to choose a picture
  I need to see the photo price, tags, title and photographer

  Background:
    Given The following photos exist
      | title   | price   | image_path                              |
      | Sporty1 | 30      | http://lorempixel.com/400/200/sports/1/ |
      | Sporty2 | 40      | http://lorempixel.com/400/200/sports/2/ |
      | Sporty3 | 50      | http://lorempixel.com/400/200/sports/3/ |
      | Sporty4 | 60      | http://lorempixel.com/400/200/sports/4/ |

  Scenario Outline: Display of photo specification
    Given I visit "Photos" page
    Then I see a photo "<title>"
    And I see price "<price>"
    And Photos have correct "<image_path>" src
    Examples:
      | title   | price   | image_path                              |
      | Sporty1 | 30      | http://lorempixel.com/400/200/sports/1/ |
      | Sporty2 | 40      | http://lorempixel.com/400/200/sports/2/ |
      | Sporty3 | 50      | http://lorempixel.com/400/200/sports/3/ |
      | Sporty4 | 60      | http://lorempixel.com/400/200/sports/4/ |