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
        Then the user should see error "Enter amount"
        When the user enters "ABC" for "Enter amount"
        And continues
        Then the user should see error "Enter amount must be a number"
        When the user enters "62499.999" for "Enter amount"
        And continues
        Then the user should see error "Enter amount must have 2 or fewer decimal places"
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
        Then the user should see error "Select how will your project add value to the produce?"
        When the user selects "Introducing a new product to your farm"
        And continues

        # project-impact
        Then the user should be at URL "project-impact"
        When the user continues
        Then the user should see error "Select what impact will the project have?"
