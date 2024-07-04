Feature: Logout  SauceLabs web page

    Scenario: Logout  SauceLabs web page
        Given the user is on saucelabs login page
        And the user fills username field with "standard_user"
        And the user fills password field with "secret_sauce"
        And the user clicks on the login button
        When the user clicks on the menu
        And the user clicks on Logout
        Then the user should see the login screen