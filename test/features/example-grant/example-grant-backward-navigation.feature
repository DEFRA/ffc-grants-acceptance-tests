Feature: Example Grant Backward Navigation

    Scenario: Explore all backward navigation options
        # start
        Given the user navigates to "/example-grant/start"
        Then the user should be at URL "start"
        Then the user should see heading "Start page"
        When the user clicks on "Start now"

        # are-you-in-england
        Then the user should be at URL "are-you-in-england"
        When the user navigates backward
        Then the user should be at URL "start"
        When the user clicks on "Start now"
        Then the user should be at URL "are-you-in-england"
        And should see heading "Are you in England?"
        When the user selects "Yes"
        And continues

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        When the user navigates backward
        Then the user should be at URL "are-you-in-england"
        When the user continues
        Then the user should be at URL "what-is-your-business"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # summary
        Then the user should be at URL "summary"
        When the user navigates backward
        Then the user should be at URL "what-is-your-business"
        When the user continues
        Then the user should be at URL "summary"

