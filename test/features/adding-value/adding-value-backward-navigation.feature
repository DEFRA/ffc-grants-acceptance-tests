Feature: Adding Value Backward Navigation

    Scenario: Explore all backward navigation options
        # start
        Given the user navigates to "/adding-value/start"
        When the user clicks on "Start now"

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        When the user navigates backward
        Then the user should be at URL "start"
        When the user clicks on "Start now"
        Then the user should be at URL "what-is-your-business"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user navigates backward
        Then the user should be at URL "what-is-your-business"
        When the user continues
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user navigates backward
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user continues
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user selects "Yes"
        And continues

        # what-is-the-estimated-cost-of-the-items
        Then the user should be at URL "what-is-the-estimated-cost-of-the-items"
        When the user navigates backward
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user continues
        Then the user should be at URL "what-is-the-estimated-cost-of-the-items"
        When the user enters "62500" for "Enter amount"
        And continues

        Then the user should be at URL "can-you-pay-the-remaining-costs"
        When the user navigates backward
        Then the user should be at URL "what-is-the-estimated-cost-of-the-items"
        When the user continues
        Then the user should be at URL "can-you-pay-the-remaining-costs"
        When the user selects "Yes"
        And continues

        # products-processed
        Then the user should be at URL "products-processed"
        When the user navigates backward
        Then the user should be at URL "can-you-pay-the-remaining-costs"
        When the user continues
        Then the user should be at URL "products-processed"
        When the user selects "Arable produce"
        And continues

        # adding-value
        Then the user should be at URL "adding-value"
        When the user navigates backward
        Then the user should be at URL "products-processed"
        When the user continues
        Then the user should be at URL "adding-value"
        When the user selects "Introducing a new product to your farm"
        And continues

        # project-impact
        Then the user should be at URL "project-impact"
        When the user navigates backward
        Then the user should be at URL "adding-value"
        When the user continues
        Then the user should be at URL "project-impact"
        When the user selects the following
            | Increasing range of added-value products |
        And continues

        # future-customers
        Then the user should be at URL "future-customers"
        When the user navigates backward
        Then the user should be at URL "project-impact"
        When the user continues
        Then the user should be at URL "future-customers"
        When the user continues

        # collaboration
        Then the user should be at URL "collaboration"
        When the user navigates backward
        Then the user should be at URL "future-customers"
        When the user continues
        Then the user should be at URL "collaboration"
        When the user continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        When the user navigates backward
        Then the user should be at URL "collaboration"
        When the user continues
        Then the user should be at URL "environmental-impact"
        When the user continues

        # score-results
        Then the user should be at URL "score-results"
        When the user navigates backward
        Then the user should be at URL "environmental-impact"
        When the user continues
        Then the user should be at URL "score-results"
        When the user continues

        # business-details
        Then the user should be at URL "business-details"
        When the user navigates backward
        Then the user should be at URL "score-results"
        When the user continues
        Then the user should be at URL "business-details"
        When the user continues

        # who-is-applying-for-this-grant
        Then the user should be at URL "who-is-applying-for-this-grant"
        When the user navigates backward
        Then the user should be at URL "business-details"
        When the user continues
        Then the user should be at URL "who-is-applying-for-this-grant"
        When the user selects "Agent"
        And continues

        # agent-details
        Then the user should be at URL "agent-details"
        When the user navigates backward
        Then the user should be at URL "who-is-applying-for-this-grant"
        When the user continues
        Then the user should be at URL "agent-details"
        When the user enters the following
            | FIELD                     | VALUE                                          |
            | First name                | John                                           |
            | Last name                 | Test-Agent                                     |
            | Business name             | Test Agency Ltd                                |
            | Email address             | cl-defra-gae-test-agent-email@equalexperts.com |
            | Confirm email address     | cl-defra-gae-test-agent-email@equalexperts.com |
            | Mobile number             | 07777 654321                                   |
            | Landline number           | 01604 654321                                   |
            | Address line 1            | High Street                                    |
            | Address line 2 (optional) | Denton                                         |
            | Town                      | Northampton                                    |
            | County (optional)         | Northamptonshire                               |
            | Postcode                  | NN7 3NN                                        |
        And continues

        # applicant-details
        Then the user should be at URL "applicant-details"
        When the user navigates backward
        Then the user should be at URL "agent-details"
        When the user continues
        Then the user should be at URL "applicant-details"
        When the user enters the following
            | FIELD                     | VALUE                                              |
            | First name                | James                                              |
            | Last name                 | Test-Farmer                                        |
            | Email address             | cl-defra-gae-test-applicant-email@equalexperts.com |
            | Confirm email address     | cl-defra-gae-test-applicant-email@equalexperts.com |
            | Mobile number             | 07777 123456                                       |
            | Landline number           | 01604 123456                                       |
            | Address line 1            | Test Farm                                          |
            | Address line 2 (optional) | Cogenhoe                                           |
            | Town                      | Northampton                                        |
            | County (optional)         | Northamptonshire                                   |
            | Postcode                  | NN7 1NN                                            |
            | Project postcode          | NN7 2NN                                            |
        And continues

        # check-your-details
        Then the user should be at URL "check-your-details"
        When the user navigates backward
        Then the user should be at URL "applicant-details"
        When the user continues
        Then the user should be at URL "check-your-details"
        When the user continues

        # declaration
        Then the user should be at URL "declaration"
        When the user navigates backward
        Then the user should be at URL "check-your-details"
        When the user continues
        Then the user should be at URL "declaration"
