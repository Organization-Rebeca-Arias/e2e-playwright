import { When, Given, Then} from "@cucumber/cucumber";
import { expect } from "playwright/test";

When('the user clicks on the checkout button', async function (){
    await this.page.locator('[data-test="checkout"]').click();
})

When('the checkout page should display {string}', async function (checkoutInformation: string){
    await expect(this.page.locator('[data-test="title"]')).toContainText(checkoutInformation);
})

Then('the user clicks on cancel button', async function (){
    await this.page.locator('[data-test="cancel"]').click();
})

Then('the cart page displays {string} confirming the user is back on the cart page', async function (cartList: string) {
    await expect(this.page.locator('[data-test="title"]')).toContainText(cartList);
})
