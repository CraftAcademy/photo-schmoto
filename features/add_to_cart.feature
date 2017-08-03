Feature: As a user,
  In order to choose multiple photos,
  I need to be able to add them to the shopping cart

Background:
  Given The following photos exist
    | title   | price   | image_path                              |
    | Sporty1 | 30      | http://lorempixel.com/400/200/sports/1/ |
    | Sporty2 | 40      | http://lorempixel.com/400/200/sports/2/ |
    | Sporty3 | 50      | http://lorempixel.com/400/200/sports/3/ |
    | Sporty4 | 60      | http://lorempixel.com/400/200/sports/4/ |

Scenario: Add photo to cart
  When I visit "Photos" page
  And I add "Sporty1" to cart
  Then Items in cart should be "1"
  And I should see "Sporty1 was successfully added to cart!"
