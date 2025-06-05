@runme
Feature: Accessibility
    - Generates individual accessibility reports for all grant journeys
    - Journeys in same feature file to ensure they are performed sequentially, for the ordering of the reports
    - Cucumber parallelism operates at feature file level

    Scenario: Analyse accessibility on all Adding Value pages
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        And the page should be analysed for accessibility
        When the user clicks on "Start now"

        # nature-of-business
        Then the user should be at URL "nature-of-business"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "None of the above"
        And continues

        # cannot-apply-nature-of-business
        Then the user should be at URL "cannot-apply-nature-of-business"
        And the page should be analysed for accessibility
        When the user navigates backward

        # nature-of-business
        Then the user should be at URL "nature-of-business"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # legal-status
        Then the user should be at URL "legal-status"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "None of the above"
        And continues

        # legal-status-cannot-apply
        Then the user should be at URL "legal-status-cannot-apply"
        And the page should be analysed for accessibility
        When the user navigates backward

        # legal-status
        Then the user should be at URL "legal-status"
        When the user selects "Sole trader"
        And continues

        # country
        Then the user should be at URL "country"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "No"
        And continues

        # cannot-apply-country
        Then the user should be at URL "cannot-apply-country"
        And the page should be analysed for accessibility
        When the user navigates backward

        # country
        Then the user should be at URL "country"
        When the user selects "Yes"
        And continues

        # planning-permission
        Then the user should be at URL "planning-permission"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Will not be in place by the time I make my full application"
        And continues

        # planning-permission-cannot-apply
        Then the user should be at URL "planning-permission-cannot-apply"
        And the page should be analysed for accessibility
        When the user navigates backward

        # planning-permission
        Then the user should be at URL "planning-permission"
        When the user selects "Should be in place by the time I make my full application"
        And continues

        # planning-permission-may-apply
        Then the user should be at URL "planning-permission-may-apply"
        And the page should be analysed for accessibility
        When the user continues

        # project-start
        Then the user should be at URL "project-start"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Yes, we have begun project work"
        And continues

        # cannot-apply-project-start
        Then the user should be at URL "cannot-apply-project-start"
        And the page should be analysed for accessibility
        When the user navigates backward

        # project-start
        Then the user should be at URL "project-start"
        When the user selects "Yes, preparatory work"
        And continues

        # tenancy
        Then the user should be at URL "tenancy"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "No"
        And continues

        # tenancy-length
        Then the user should be at URL "tenancy-length"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "No"
        And continues

        # may-apply-tenancy-length
        Then the user should be at URL "may-apply-tenancy-length"
        And the page should be analysed for accessibility
        When the user continues

        # smaller-abattoir
        Then the user should be at URL "smaller-abattoir"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        # take top fruit journey
        When the user selects "No"
        And continues

        # fruit-storage
        Then the user should be at URL "fruit-storage"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        # navigate back to smaller abattoir journey
        When the user navigates backward

        # smaller-abattoir
        Then the user should be at URL "smaller-abattoir"
        # take smaller abattoir journey
        When the user selects "Yes"
        And continues

        # other-farmers
        Then the user should be at URL "other-farmers"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "No"
        And continues

        # cannot-apply-other-farmers
        Then the user should be at URL "cannot-apply-other-farmers"
        And the page should be analysed for accessibility
        When the user navigates backward

        # other-farmers
        Then the user should be at URL "other-farmers"
        When the user selects "Yes"
        And continues

        # project-items-needed
        Then the user should be at URL "project-items-needed"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "No"
        And continues

        # cannot-apply-project-items
        Then the user should be at URL "cannot-apply-project-items"
        And the page should be analysed for accessibility
        When the user navigates backward

        # project-items-needed
        Then the user should be at URL "project-items-needed"
        When the user selects "Yes"
        And continues

        # project-items
        Then the user should be at URL "project-items"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Constructing or improving buildings for processing"
        And continues

        # storage
        Then the user should be at URL "storage"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Yes, we will need storage facilities"
        And continues

        # project-cost
        Then the user should be at URL "project-cost"
        And the page should be analysed for accessibility

        When the user enters "" for "Enter amount"
        And continues
        And the page should be analysed for accessibility for "[validation-no-value]"

        When the user enters "ABC" for "Enter amount"
        And continues
        And the page should be analysed for accessibility for "[validation-format]"

        When the user enters "62499.99" for "Enter amount"
        And continues
        And the page should be analysed for accessibility for "[validation-decimals]"

        When the user enters "12345678" for "Enter amount"
        And continues
        And the page should be analysed for accessibility for "[validation-max-number]"

        When the user enters "0" for "Enter amount"
        And continues
        And the page should be analysed for accessibility for "[validation-min-number]"

        When the user enters "62499" for "Enter amount"
        And continues

        # project-cost-cannot-apply
        Then the user should be at URL "project-cost-cannot-apply"
        And the page should be analysed for accessibility
        When the user navigates backward

        # project-cost
        Then the user should be at URL "project-cost"
        When the user enters "62500" for "Enter amount"
        And continues

        # potential-funding
        Then the user should be at URL "potential-funding"
        And the page should be analysed for accessibility
        And continues

        # remaining-costs
        Then the user should be at URL "remaining-costs"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "No"
        And continues

        # cannot-apply-remaining-costs
        Then the user should be at URL "cannot-apply-remaining-costs"
        And the page should be analysed for accessibility
        When the user navigates backward

        # remaining-costs
        Then the user should be at URL "remaining-costs"
        When the user selects "Yes"
        And continues

        # produce-processed
        Then the user should be at URL "produce-processed"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Arable produce"
        And continues

        # how-adding-value
        Then the user should be at URL "how-adding-value"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Introducing a new product to your farm"
        And continues

        # project-impact
        Then the user should be at URL "project-impact"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects the following
            | Increasing range of added-value products  |
            | Increasing volume of added-value products |
        And continues

        # mechanisation
        Then the user should be at URL "mechanisation"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Yes"
        And continues

        # manual-labour-amount
        Then the user should be at URL "manual-labour-amount"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "More than 10%"
        And continues

        # future-customers-exist
        Then the user should be at URL "future-customers-exist"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Yes"
        And continues

        # future-customers
        Then the user should be at URL "future-customers"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects the following
            | Processors  |
            | Wholesalers |
        And continues

        # collaboration
        Then the user should be at URL "collaboration"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Yes"
        And continues

        # environmental-impact-exist
        Then the user should be at URL "environmental-impact-exist"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Yes"
        And continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        And the page should be analysed for accessibility
        And continues
        And the page should be analysed for accessibility for "[validation]"
        When the user selects the following
            | Water efficiency               |
            | Sustainable packaging measures |
        And continues

        # score-results
        Then the user should be at URL "score-results"
        And the page should be analysed for accessibility
        And continues

        # business-details
        Then the user should be at URL "business-details"
        And the page should be analysed for accessibility
        And continues

        # applying
        Then the user should be at URL "applying"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
        When the user selects "Agent"
        And continues

        # agent-details
        Then the user should be at URL "agent-details"
        And the page should be analysed for accessibility
        When the user continues
        Then the page should be analysed for accessibility for "[validation]"
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
        And the page should be analysed for accessibility
        And continues
        And the page should be analysed for accessibility for "[validation]"
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

        # check-details
        Then the user should be at URL "check-details"
        And the page should be analysed for accessibility
        And continues

        # declaration
        Then the user should be at URL "declaration"
        And the page should be analysed for accessibility
        When the user confirms and sends

        # confirmation
        Then the user should be at URL "confirmation"
        And the page should be analysed for accessibility

        And accessibility reports are generated

    Scenario: Analyse accessibility on all Example Grant pages
        # start
        Given the user navigates to "/example-grant/start"
        Then the user should be at URL "start"
        And the page should be analysed for accessibility
        When the user clicks on "Start now"

        # are-you-in-england
        Then the user should be at URL "are-you-in-england"
        And the page should be analysed for accessibility
        When the user selects "No"
        And continues

        # you-must-be-in-england
        Then the user should be at URL "you-must-be-in-england"
        And the page should be analysed for accessibility
        When the user navigates backward

        # are-you-in-england
        Then the user should be at URL "are-you-in-england"
        When the user selects "Yes"
        And continues

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        And the page should be analysed for accessibility
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # summary
        Then the user should be at URL "summary"
        And the page should be analysed for accessibility
        When the user submits their form

        # status
        Then the user should be at URL "status"
        And the page should be analysed for accessibility

        And accessibility reports are generated
