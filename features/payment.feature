Feature: Payment solution
  As a user,
  In order to complete my purchase,
  I need to be able to enter my payment details and complete the purchase

Background:
  Given The following photos exist
    | title   | price   | image_path                              |
    | Sporty1 | 30      | http://lorempixel.com/400/200/sports/1/ |
    | Sporty2 | 40      | http://lorempixel.com/400/200/sports/2/ |
    | Sporty3 | 50      | http://lorempixel.com/400/200/sports/3/ |
    | Sporty4 | 60      | http://lorempixel.com/400/200/sports/4/ |
  And The following photos exist in the cart
    | title   |
    | Sporty1 |
    | Sporty2 |
    | Sporty2 |

Scenario:
  When I visit "Cart Detail" page
  And I click "Buy"
  Then I should see Payment card in the popup
