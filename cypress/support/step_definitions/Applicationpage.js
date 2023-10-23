const {
  Given,
  When,
  Then,
} = require("@badeball/cypress-cucumber-preprocessor");

const homePageElements = require("../PageObject/ZincHomePage");
const applyPageElements = require("../PageObject/ZincApplyPage.js");
const _homePage = new homePageElements();
const _applyPage = new applyPageElements();

Given("I navigate to the application page", () => {
  cy.visit("https://demo:49bdc37ec999@zinclusivestg.wpengine.com/apply/");
  cy.reload();
  cy.intercept("https://zinclusivestg.wpengine.com/apply/");
});

When(
  "I enter a first and last name in the application form {string}{string}",
  (apply_fName, apply_lName) => {
    _applyPage.enterApplyFirstName(apply_fName);
    _applyPage.enterApplyLastName(apply_lName);
  }
);

When(
  "I enter an email address in the application form {string}",
  (apply_eMail) => {
    _applyPage.enterApplyEmail(apply_eMail);
  }
);

When("I select a state {string} on the application form", (apply_state) => {
  _applyPage.selectApplyState(apply_state);
});
