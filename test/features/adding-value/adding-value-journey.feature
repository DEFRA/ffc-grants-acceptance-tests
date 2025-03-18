Feature: Adding Value Journey
@runme
    Scenario: Apply for a grant
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        And should see heading "Check if you can apply for a Farming Transformation Fund Adding Value Grant"
        When the user clicks on "Start now"

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        And should see heading "What is the legal status of the business?"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
        And should see heading "Is the planned project in England?"
        When the user selects "Yes"
        And continues

        # what-is-the-estimated-cost-of-the-items
        Then the user should be at URL "what-is-the-estimated-cost-of-the-items"
        And should see heading "What is the estimated cost of the items?"
        When the user enters "62500" for "Enter amount"
        And continues

        # can-you-pay-the-remaining-costs
        Then the user should be at URL "can-you-pay-the-remaining-costs"
        And should see heading "Can you pay the remaining costs of £37,500.00?"
        When the user selects "Yes"
        And continues

        # products-processed
        Then the user should be at URL "products-processed"
        And should see heading "What type of produce is being processed?"
        When the user selects "Arable produce"
        And continues

        # adding-value
        Then the user should be at URL "adding-value"
        And should see heading "How will your project add value to the produce?"
        When the user selects "Introducing a new product to your farm"
        And continues

        # project-impact
        Then the user should be at URL "project-impact"
        And should see heading "What impact will the project have?"
        When the user selects the following
            | Increasing range of added-value products  |
            | Increasing volume of added-value products |
        And continues

        # future-customers
        Then the user should be at URL "future-customers"
        And should see heading "Who will your new customers be after the project?"
        When the user continues

        # collaboration
        Then the user should be at URL "collaboration"
        And should see heading "Will you work in partnership or collaborate with other farmers or producers?"
        When the user continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        And should see heading "How will the project improve the environment?"
        When the user continues

        # score-results
        Then the user should be at URL "score-results"
        And should see heading "Score results"
        And should see "Strong" for their project score
        And should see the following score results
            | TOPIC             | ANSWERS                                   | SCORE  | FUNDING PRIORITIES                                                                            |
            | Produce processed | Arable produce                            | Strong | Create and expand processing capacity to provide more English-grown food for consumers to buy |
            | Adding value      | Introducing a new product to your farm    | Strong | Improve processing and supply chains                                                          |
            |                   |                                           |        | Grow your business                                                                            |
            | Project impact    | Increasing range of added-value products  | Medium | Improve processing and supply chains                                                          |
            |                   | Increasing volume of added-value products |        | Grow your business                                                                            |
        When the user continues

        # business-details
        Then the user should be at URL "business-details"
        And should see heading "Business Details"
        When the user continues

        # who-is-applying-for-this-grant
        Then the user should be at URL "who-is-applying-for-this-grant"
        And should see heading "Who is applying for this grant?"
        When the user selects "Agent"
        And continues

        # agent-details
        Then the user should be at URL "agent-details"
        And should see heading "Agent's details"
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
        And should see heading "Applicant's details"
        When the user enters the following
            | FIELD                     | VALUE                                                          |
            | First name                | James                                                          |
            | Last name                 | Test-Farmer                                                    |
            | Email address             | cl-defra-gae-test-applicant-email@equalexperts.com |
            | Confirm email address     | cl-defra-gae-test-applicant-email@equalexperts.com |
            | Mobile number             | 07777 123456                                                   |
            | Landline number           | 01604 123456                                                   |
            | Address line 1            | Test Farm                                                      |
            | Address line 2 (optional) | Cogenhoe                                                       |
            | Town                      | Northampton                                                    |
            | County                    | Northamptonshire                                               |
            | Business postcode         | NN7 1NN                                                        |
            | Project postcode          | NN7 2NN                                                        |
        And continues

        # check-your-details
        Then the user should be at URL "check-your-details"
        And should see heading "Check your details"
        When the user continues

        # declaration
        Then the user should be at URL "declaration"
        And should see heading "Confirm and send"
        When the user confirms and sends

        # status
        Then the user should be at URL "status"
        And should see heading "Form submitted"
