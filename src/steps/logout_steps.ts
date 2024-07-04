import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "playwright/test";


When('the user clicks on the menu', async function() {
    await this.page.getByRole('button', { name: 'Open Menu' }).click();
})

When('the user clicks on Logout', async function() {
    await this.page.locator('[data-test="logout-sidebar-link"]').click();
})

Then('the user should see the login screen', async function() {
    await expect(this.page.locator('[data-test="login-button"]')).toContainText('Login');
})
