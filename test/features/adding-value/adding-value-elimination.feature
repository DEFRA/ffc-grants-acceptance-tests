Feature: Adding Value Elimination

    Scenario: Explore all elimination routes
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        Then the user should see heading "Check if you can apply for a Farming Transformation Fund Adding Value Grant"
        When the user clicks on "Start now"

        # what-is-your-business elimination
        Then the user should be at URL "what-is-your-business"
        And should see heading "What is your business?"
        When the user selects "None of the above"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-business-type"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business None of the above
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        And should see heading "What is the legal status of the business?"
        When the user selects "None of the above"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-legal-status"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        And should see heading "What is the legal status of the business?"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england elimination
        Then the user should be at URL "is-the-planned-project-in-england"
        And should see heading "Is the planned project in England?"
        When the user selects "No"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-project-in-england"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
        And should see heading "Is the planned project in England?"
