Feature: Subscribe for updates regarding Zinclusive application feature availability

  This feature is intended to allow interested customers to Subscribe to product availability notifications.

  Scenario: User Subscribes to recieving product updates using an invalid email
    Given I navigate to the homepage
    When I click the Get Started button
    And I enter first name "Bob"
    And I enter last name "Tester"
    And I enter an email address "test.tester@example.com"
    And I accept the electronic communications agreement
    And I submit the subscription form
