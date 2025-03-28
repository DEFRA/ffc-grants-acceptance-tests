Feature: Adding Value Input Validation

    Scenario: Explore all input validation
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        When the user clicks on "Start now"

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        When the user continues
        Then the user should see error "Select what is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user continues
        Then the user should see error "Select what is the legal status of the business?"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user continues
        Then the user should see error "Select is the planned project in England?"
        When the user selects "Yes"
        And continues

        # what-is-the-estimated-cost-of-the-items
        Then the user should be at URL "what-is-the-estimated-cost-of-the-items"
        When the user continues
        Then the user should see error "Enter the estimated cost of the items"
        When the user enters "ABC" for "Enter amount"
        And continues
        Then the user should see error "Enter amount must be a number"
        When the user enters "62499.99" for "Enter amount"
        And continues
        Then the user should see error "Enter amount must be a whole number"
        When the user enters "12345678" for "Enter amount"
        And continues
        Then the user should see error "Enter a whole number with a maximum of 7 digits"
        When the user enters "0" for "Enter amount"
        And continues
        Then the user should see error "Enter a whole number with a maximum of 7 digits"
        When the user enters "62500" for "Enter amount"
        And continues

        # can-you-pay-the-remaining-costs
        Then the user should be at URL "an-you-pay-the-remaining-costs"
        When the user continues
        Then the user should see error "Select yes if you can pay the remaining costs"
        When the user selects "Yes"
        And continues

        # products-processed
        Then the user should be at URL "products-processed"
        When the user continues
        Then the user should see error "Select what type of produce is being processed?"
        When the user selects "Arable produce"
        And continues

        # adding-value
        Then the user should be at URL "adding-value"
        When the user continues
        Then the user should see error "Select how will this project add value to the produce?"
        When the user selects "Introducing a new product to your farm"
        And continues

        # project-impact
        Then the user should be at URL "project-impact"
        When the user continues
        Then the user should see error "Select what impact will the project have?"
        When the user selects the following
            | Increasing range of added-value products |
        And continues

        # future-customers
        Then the user should be at URL "future-customers"
        When the user continues

        # collaboration
        Then the user should be at URL "collaboration"
        When the user continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        When the user continues

        # score-results
        Then the user should be at URL "score-results"
        When the user continues

        # business-details
        Then the user should be at URL "business-details"
        When the user continues

        # who-is-applying-for-this-grant
        Then the user should be at URL "who-is-applying-for-this-grant"
        When the user continues
        Then the user should see error "Select who is applying for this grant?"
        When the user selects "Agent"
        And continues

        # agent-details
        Then the user should be at URL "agent-details"
        When the user continues
        Then the user should see the following errors
            | Enter your first name      |
            | Enter your last name       |
            | Enter your business name   |
            | Enter your email address   |
            | Confirm your email address |
            | Enter a mobile number      |
            | Enter a landline number    |
            | Enter address line 1       |
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
            | County                    | Northamptonshire                               |
            | Postcode                  | NN7 3NN                                        |
        And continues

        # applicant-details
        Then the user should be at URL "applicant-details"
        When the user continues
        Then the user should see the following errors
            | Enter your first name      |
            | Enter your last name       |
            | Enter your email address   |
            | Confirm your email address |
            | Enter a mobile number      |
            | Enter a landline number    |
            | Enter address line 1       |
            | Enter project postcode     |
