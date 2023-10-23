class applyPageElements {
  elements = {
    applyFirstName: () => cy.get("#input_13_4"),

    applyLastName: () => cy.get("#input_13_5"),

    applyEmail: () => cy.get("#input_13_6"),

    applyStateDropDown: () => cy.get("#input_13_7"),
  };

  enterApplyFirstName(apply_fName) {
    this.elements.applyFirstName().clear();
    this.elements.applyFirstName().type(apply_fName);
  }

  enterApplyLastName(apply_lName) {
    this.elements.applyLastName().clear();
    this.elements.applyLastName().type(apply_lName);
  }

  enterApplyEmail(apply_eMail) {
    this.elements.applyEmail().type(apply_eMail);
  }

  selectApplyState(apply_state) {
    this.elements.applyStateDropDown(apply_state).select(apply_state);
  }
}

module.exports = applyPageElements;
