class homePageElements {
  elements = {
    firstName: () => cy.get("#mce-FNAME"),

    lastName: () => cy.get("#mce-LNAME"),

    eMail: () => cy.get("#mce-EMAIL"),

    commsAgreementRadioBtn: () => cy.get("#mce-MMERGE9-0"),

    subscribeBtn: () => cy.get("#mc-embedded-subscribe"),

    getStartedBtn: () =>
      cy.get(
        ".elementor-element-c1df8e1 > .elementor-widget-container > .elementor-button-wrapper > .elementor-button > .elementor-button-content-wrapper > .elementor-button-text"
      ),
  };

  enterFirstName(f_Name) {
    this.elements.firstName().clear();
    this.elements.firstName().type(f_Name);
  }

  enterLastName(l_Name) {
    this.elements.lastName().clear();
    this.elements.lastName().type(l_Name);
  }

  enterEmailAddress(eMail_Address) {
    this.elements.eMail().clear();
    this.elements.eMail().type(eMail_Address);
  }

  AcceptCommsAgreement() {
    this.elements.commsAgreementRadioBtn().click();
  }

  clickGetStarted() {
    this.elements.getStartedBtn().click();
  }

  clickSubscribe() {
    this.elements.subscribeBtn().click();
  }
}

module.exports = homePageElements;
