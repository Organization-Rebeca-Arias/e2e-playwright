import { Given, When, Then } from "@cucumber/cucumber";
import { expect } from "playwright/test";


When('the user adds to the cart {string}', async function(itemName: string) {
    await this.page.locator('[data-test="add-to-cart-'+itemName.toLowerCase().replaceAll(" ","-")+'"]').click();
})

When('the user clicks on the cart', async function() {
    await this.page.locator('[data-test="shopping-cart-link"]').click();
})

Then('the user should see {string} product in the cart', async function (productName: string) {
    await expect(this.page.locator('[data-test="inventory-item-name"]')).toContainText(productName);
})

Given('the user clicks on continue shopping button', async function() {
    await this.page.locator('[data-test="continue-shopping"]').click();
})


Then('the list cart should display {string} and {string}', async function (product: string, newProduct: string) {
    await expect(this.page.locator('[data-test="item-0-title-link"]')).toContainText(product);
    await expect(this.page.locator('[data-test="item-1-title-link"]')).toContainText(newProduct);
})

Then('the user should see {string} item in the cart', async function (numberItems: string) {
    await expect(this.page.locator('[data-test="shopping-cart-badge"]')).toContainText(numberItems);
})

Then('the user removes one of the items from the cart', async function() {
    await this.page.locator('[data-test="remove-sauce-labs-bike-light"]').click();
})


