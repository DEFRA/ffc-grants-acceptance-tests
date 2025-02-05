Feature: Adding Value Input Validation

    Scenario: Explore all input validation
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        Then the user should see heading "Check if you can apply for a Farming Transformation Fund Adding Value Grant"
        When the user clicks on "Start now"

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        And should see heading "What is your business?"
        When the user continues
        Then the user should see error "Select what is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        And should see heading "What is the legal status of the business?"
        When the user continues
        Then the user should see error "Select what is the legal status of the business?"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
        And should see heading "Is the planned project in England?"
        When the user continues
        Then the user should see error "Select is the planned project in england?"
        When the user selects "Yes"
        And continues

        # products-processed
        Then the user should be at URL "products-processed"
        And should see heading "What type of produce is being processed?"
        When the user continues
        Then the user should see error "Select what type of produce is being processed?"
