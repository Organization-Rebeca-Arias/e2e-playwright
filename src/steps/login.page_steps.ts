import { When } from '@cucumber/cucumber';

When('the user click on Username field', async function () {
    await this.page.locator('[data-test="username"]').click(); 
});

When('types their name', async function () {
    await this.page.locator('[data-test="username"]').fill('standard_user');
});

When('the user click on Password field', async function () {
    await this.page.locator('[data-test="password"]').click();
});

When('types their Password', async function () {
    await this.page.locator('[data-test="password"]').fill('secret_sauce');
});

When('the user clicks on login button',async function () {
    await this.page.locator('[data-test="login-button"]').click();
});


    
    
    
   