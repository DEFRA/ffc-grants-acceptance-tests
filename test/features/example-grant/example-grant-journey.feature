Feature: Example Grant Checker Journey

    Scenario: Apply for an example grant
        # start
        Given the user navigates to "/grants/start"
        Then the user should see heading "Start page"
        When the user clicks on "Start now"

        # are-you-in-england
        Then the user should be at URL "are-you-in-england"
        And should see heading "Are you in England?"
        When the user selects "Yes"
        And continues

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-your-business
        Then the user should be at URL "summary"
        And should see heading "Check your answers before submitting your form"

