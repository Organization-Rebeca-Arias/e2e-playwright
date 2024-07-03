import { Given,When,Then } from '@cucumber/cucumber';
import { expect } from 'playwright/test';

When('the user filters products by low to high price', async function () {
    await this.page.locator('[data-test="product-sort-container"]').selectOption('lohi');
})

When('the user should see the first item with the lowest price {string}', async function (lowprice: string) {
    await expect(this.page.locator('[data-test="inventory-list"]')).toContainText(lowprice);
})

Then('the user should see the last item with the highest price {string}', async function (highprice: string) {
    await expect(this.page.locator('[data-test="inventory-list"]')).toContainText(highprice);
})
