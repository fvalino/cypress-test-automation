@mockApplicationSubmits
Feature: Mock Abandon Applications for MFL

    Scenario Outline: Abandon at Loan Agreement

        Given I navigate to a given MFL page '<pageUrl>'
        When I click the Apply '<applyButtonSelector>' button for that page
        And I click the Fill the form button
        And I click the Submit Application button
        And I select an offer '<offerSelector>'
        And I click the Apply for This Loan button
        And I leave the page by going to Razorvision.net '<razorVision>'

        Examples:
            | pageUrl                               | applyButtonSelector             | offerSelector | razorVision                  |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |

    Scenario Outline: Abandon at Offer Page

        Given I navigate to a given MFL page '<pageUrl>'
        When I click the Apply '<applyButtonSelector>' button for that page
        And I click the Fill the form button
        And I click the Submit Application button
        And I select an offer '<offerSelector>'
        And I leave the page by going to Razorvision.net '<razorVision>'

        Examples:
            | pageUrl                               | applyButtonSelector             | offerSelector | razorVision                  |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |

    Scenario Outline: Abandon at Application

        Given I navigate to a given MFL page '<pageUrl>'
        When I click the Apply '<applyButtonSelector>' button for that page
        And I click the Fill the form button
        And I leave the page by going to Razorvision.net '<razorVision>'

        Examples:
            | pageUrl                               | applyButtonSelector             | offerSelector | razorVision                  |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-installment-loans | #choice_3_2_2 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/services/ | #apply-button-payday            | #choice_3_2_1 | https://www.razorvision.net/ |
            | https://www.myflashloan.com/          | #apply-button-home              | #choice_3_2_0 | https://www.razorvision.net/ |