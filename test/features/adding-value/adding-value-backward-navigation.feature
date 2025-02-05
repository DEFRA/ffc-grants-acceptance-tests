Feature: Adding Value Backward Navigation

    Scenario: Explore all backward navigation options
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        Then the user should see heading "Check if you can apply for a Farming Transformation Fund Adding Value Grant"
        When the user clicks on "Start now"

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        When the user navigates backward
        Then the user should be at URL "start"
        When the user clicks on "Start now"
        Then the user should be at URL "what-is-your-business"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user navigates backward
        Then the user should be at URL "what-is-your-business"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        And should see heading "What is the legal status of the business?"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user navigates backward
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user selects "Sole trader"
        And continues
        Then the user should be at URL "is-the-planned-project-in-england"
        And should see heading "Is the planned project in England?"
        When the user selects "Yes"
        And continues

        # products-processed
        Then the user should be at URL "products-processed"
        When the user navigates backward
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user selects "Yes"
        And continues
        Then the user should be at URL "products-processed"
        And should see heading "What type of produce is being processed?"
        When the user selects "Arable produce"
        And continues

        # adding-value
        Then the user should be at URL "adding-value"
        When the user navigates backward
        Then the user should be at URL "products-processed"
        When the user selects "Arable produce"
        And continues
        Then the user should be at URL "adding-value"
        And should see heading "How will your project add value to the produce?"
        When the user continues

        # project-impact
        Then the user should be at URL "project-impact"
        When the user navigates backward
        Then the user should be at URL "adding-value"
        When the user continues
        Then the user should be at URL "project-impact"
        And should see heading "What impact will the project have?"
        When the user continues

        # future-customers
        Then the user should be at URL "future-customers"
        When the user navigates backward
        Then the user should be at URL "project-impact"
        When the user continues
        Then the user should be at URL "future-customers"
        And should see heading "Who will your new customers be after the project?"
        When the user continues

        # collaboration
        Then the user should be at URL "collaboration"
        When the user navigates backward
        Then the user should be at URL "future-customers"
        When the user continues
        Then the user should be at URL "collaboration"
        And should see heading "Will you work in partnership or collaborate with other farmers or producers?"
        When the user continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        When the user navigates backward
        Then the user should be at URL "collaboration"
        When the user continues
        Then the user should be at URL "environmental-impact"
        And should see heading "How will the project improve the environment?"
        When the user continues

        # score-results
        Then the user should be at URL "score-results"
        When the user navigates backward
        Then the user should be at URL "environmental-impact"
        When the user continues
        Then the user should be at URL "score-results"
        And should see heading "Score results"
