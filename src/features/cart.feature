Feature: Cart items

Scenario: Add an item to the cart
    Given the user is on saucelabs login page
    When the user fills username field with "standard_user"
    And the user fills password field with "secret_sauce"
    And the user clicks on the login button
    And the user adds to the cart "Sauce Labs Bolt T-Shirt"
    And the user clicks on the cart
    Then the user should see "Sauce Labs Bolt T-Shirt" product in the cart

Scenario: Add multiple items to the cart
    Given the user is on saucelabs login page
    And the user fills username field with "standard_user"
    And the user fills password field with "secret_sauce"
    And the user clicks on the login button
    And the user adds to the cart "Sauce Labs Bolt T-Shirt"
    And the user clicks on the cart
    And the user clicks on continue shopping button
    When the user adds to the cart "Sauce Labs Bike Light"
    And the user clicks on the cart
    Then the list cart should display "Sauce Labs Bike Light" and "Sauce Labs Bolt T-Shirt"

Scenario: Remove an item from the cart
    Given the user is on saucelabs login page
    And the user fills username field with "standard_user"
    And the user fills password field with "secret_sauce"
    And the user clicks on the login button
    And the user adds to the cart "Sauce Labs Bolt T-Shirt"
    And the user clicks on the cart
    And the user clicks on continue shopping button
    And the user adds to the cart "Sauce Labs Bike Light"
    And the user clicks on the cart
    Then the user should see "2" item in the cart
    And the user removes one of the items from the cart
    And the user clicks on the cart
    Then the user should see "1" item in the cart