Feature: As a user,
  In order to choose a picture
  I need to see the photo price, tags, title and photographer

  Background:
    Given The following photos exist
      | title   | price   | image_path                              |
      | Sporty1 | 30      | http://lorempixel.com/400/200/sports/1/ |
      | Sporty2 | 40      | http://lorempixel.com/400/200/sports/2/ |
      | Sporty3 | 30      | http://lorempixel.com/400/200/sports/3/ |
      | Sporty4 | 30      | http://lorempixel.com/400/200/sports/4/ |

  Scenario: Display of photo specification
    Given I visit "Photos" page
    Then I see a photo "Sporty1"
    And I see price "30"
    Then I see a photo "Sporty2"
    And I see price "40"

#  Scenario Outline: Display of photo specification
#    Given I visit "Photos" page
#    Then I see a photo <title>
#    And I see price <price>
#
#    Examples:
#      | title   | price   |
#      | Sporty1 | 30      |
#      | Sporty2 | 30      |
      # | Sporty3 | 30      |
      # | Sporty4 | 30      |
