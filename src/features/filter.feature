Feature: Filter orders products

    
        
    @productlistdescending
    Scenario: Filter orders products by low to high price
        Given the user is on saucelabs login page
        When the user fills username field with "standard_user"
        And the user fills password field with "secret_sauce"
        And the user clicks on the login button
        And the user filters products by low to high price
        Then the user should see the first item with the lowest price "$7.99"
        And the user should see the last item with the highest price "$49.99"

    @productlistascending
    Scenario: Filter orders products by high to low price
        Given the user is on saucelabs login page
        When the user fills username field with "standard_user"
        And the user fills password field with "secret_sauce"
        And the user clicks on the login button
        And the user filters products by high to low price
        Then the user should see the first item with the lowest price "$49.99"
        And the user should see the last item with the highest price "$7.99"
