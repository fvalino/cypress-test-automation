const { Given, When, Then } = require("@badeball/cypress-cucumber-preprocessor");

const url = "https://www.myflashloan.com/"
const applyButton = "#apply-button-home"
Given ("I navigate to the homepage", () =>{
    cy.visit(url);
})

When ("I click the Apply button", () =>{
    cy.get(applyButton).click();
})

When ("I click the Fill the form button", () =>{
    cy.get('#ignore_me').click();
})

When ("I type Deny in the last name field", () =>{
    cy.get('#input_1_18').type('{selectAll}')
    .type('Deny');
})

When ("I click the Submit Application button", () =>{
    //cy.wait(4000);
    cy.get('#input_1_18').click();
    cy.get('#gform_submit_button_1').scrollIntoView().click();
})

Then ("I am presented with a application denied page", () => {
    cy.wait(15000);
    cy.contains('Unfortunately').should('be.visible');
})

Given ("I navigate to a given MFL page {string}", (pageUrl) =>{
    cy.visit(pageUrl);
})

When ("I click the Apply {string} button for that page", (applyButtonSelector) =>{
    cy.get(applyButtonSelector).click();
})

When ("I type trigger {string} in the last name field", (lastName) =>{
    cy.get('#input_1_18').type('{selectAll}')
    .type(lastName);
})

When ('I select an offer {string}', (offerSelector) =>{
    cy.wait(15000); //if running this through browser bump up to about 18000ms)
    cy.get(offerSelector).scrollIntoView().click();
})

When ('I click the Apply for This Loan button', () =>{
    cy.get('#gform_submit_button_3').scrollIntoView().click();
})

When ("I accept the Loan Agreement", () => {
    cy.get('#input_4_1_1').click();
    cy.get('#gform_submit_button_4').click();
})

When ("I leave the page by going to Razorvision.net {string}", (razorVision) =>{
    cy.visit(razorVision);
})