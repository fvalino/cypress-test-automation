const {
  Given,
  When,
  Then,
} = require("@badeball/cypress-cucumber-preprocessor");
const homePageElements = require("../PageObject/ZincHomePageObjects");
const _homePage = new homePageElements();

const url = "http://zinclusivestg.wpengine.com";
const applyButton = "#apply-button-home";
Given("I navigate to the homepage", () => {
  cy.visit(url, {
    auth: {
      username: "demo",
      password: "49bdc37ec999",
    },
  });
});

When("I click the Get Started button", () => {
  _homePage.clickGetStarted();
});

When("I enter first name {string}", (f_Name) => {
  _homePage.enterFirstName(f_Name);
});

When("I enter last name {string}", (l_Name) => {
  _homePage.enterLastName(l_Name);
});

When("I enter an email address {string}", (eMail_Address) => {
  _homePage.enterEmailAddress(eMail_Address);
});

When("I accept the electronic communications agreement", () => {
  _homePage.AcceptCommsAgreement();
});

When("I submit the subscription form", () => {
  _homePage.clickSubscribe();
});
