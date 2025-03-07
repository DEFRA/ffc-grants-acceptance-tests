Feature: Adding Value Elimination

    Scenario: Explore all elimination routes
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        When the user clicks on "Start now"

        # what-is-your-business elimination
        Then the user should be at URL "what-is-your-business"
        When the user selects "None of the above"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-business-type"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business elimination
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user selects "None of the above"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-legal-status"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england elimination
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user selects "No"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-project-in-england"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
        When the user selects "Yes"
        And continues

        # what-is-the-estimated-cost-of-the-items elimination
        Then the user should be at URL "what-is-the-estimated-cost-of-the-items"
        When the user enters "62499" for "Enter amount"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-estimated-items-cost"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # what-is-the-estimated-cost-of-the-items
        Then the user should be at URL "what-is-the-estimated-cost-of-the-items"
        When the user enters "62500" for "Enter amount"
        And continues

        # can-you-pay-the-remaining-costs elimination
        Then the user should be at URL "can-you-pay-the-remaining-costs"
        And the user should see heading "Can you pay the remaining costs of £37,500.00?"
        When the user selects "No"
        And continues
        Then the user should be at URL "you-cannot-apply-for-a-grant-from-this-scheme-remaining-costs"
        And should see heading "You cannot apply for a grant from this scheme"
        When the user navigates backward

        # can-you-pay-the-remaining-costs
        Then the user should be at URL "can-you-pay-the-remaining-costs"
