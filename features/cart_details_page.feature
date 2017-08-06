Feature: As a user
  In order to make sure that my order is correct,
  I need to see a list of the photos I have chosen and a Confirm button

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

  Scenario: View the cart
    When I visit "Cart Detail" page
    Then I should see "Sporty1"
    And I should see the count "1" for "Sporty1"
    And I should see "Sporty2"
    And I should see the count "2" for "Sporty2"
    And I should see "Amount: $110"
    And I click "Pay with Card"
