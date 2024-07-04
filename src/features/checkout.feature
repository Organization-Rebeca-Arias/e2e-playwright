Feature: Checkout items
   Scenario: Cancel Checkout items
    Given the user is on saucelabs login page
    And the user fills username field with "standard_user"
    And the user fills password field with "secret_sauce"
    And the user clicks on the login button
    And the user adds to the cart "Sauce Labs Bolt T-Shirt"
    And the user clicks on the cart
    When the user clicks on the checkout button
    And the checkout page should display 'Checkout: Your Information' 
    Then the user clicks on cancel button
    And the cart page displays 'Your Cart' confirming the user is back on the cart page