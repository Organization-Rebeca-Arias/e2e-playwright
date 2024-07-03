Feature: Login SauceLabs web page
    
    Background: 
     Given the user is on saucelabs login page

    Scenario: Login with valid credentials
        When the user fills username field with "standard_user"
        And the user fills password field with "secret_sauce"
        And the user clicks on the login button
        Then the user should see products page

    Scenario: Login with invalid credentials
      When the user fills username field with "standard_user"  
      And the user fills password field with "invalid_credentials"
      And the user clicks on the login button
      Then the user should see the login error message "Username and password do not match any user in this service" 