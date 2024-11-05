Feature: Shopping Cart

  Scenario: Adding an item to the cart
    Given I have an empty cart
    When I add an item "Laptop" with price 1000
    Then the total should be 1000

  Scenario: Applying a discount
    Given I have an empty cart
    When I add an item "Laptop" with price 1000
    And I apply a discount of 10 percent
    Then the total should be 900

  Scenario: Removing an item from the cart
    Given I have a cart with a "Laptop" costing 1000
    When I remove the item "Laptop"
    Then the total should be 0