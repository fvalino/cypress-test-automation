Feature: Zinch Application

  This feature allows customers to apply for a line of creadit through Zinclusive's application page

  Scenario: User submits application
    Given I navigate to the application page
    When I enter a first and last name in the application form "FinTest""Tester"
    And I enter an email address in the application form "FinTest.Tester@tester.com"
    And I select a state "AR" on the application form
