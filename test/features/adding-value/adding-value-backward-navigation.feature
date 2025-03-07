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
        When the user continues

        # project-impact
        Then the user should be at URL "project-impact"
        When the user navigates backward
        Then the user should be at URL "adding-value"
        When the user continues
        Then the user should be at URL "project-impact"
        When the user selects the following
            | Increasing range of added-value products  |
        When the user continues

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
