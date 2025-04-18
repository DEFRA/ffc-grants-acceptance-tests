Feature: Adding Value Top Fruit Journey

    Scenario: Successfully apply for a grant on the Top Fruit journey
        - while awaiting planning permission
        - as a tenant farmer
        - receiving an average score
        - as an agent

        # start
        Given the user navigates to "/adding-value/start"
        And should see heading "Check if you can apply for a Farming Transformation Fund Adding Value Grant"
        When the user clicks on "Start now"

        # nature-of-business
        Then the user should be at URL "nature-of-business"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # legal-status
        Then the user should be at URL "legal-status"
        And should see heading "What is the legal status of the business?"
        When the user selects "Limited company"
        And continues

        # country
        Then the user should be at URL "country"
        And should see heading "Is the planned project in England?"
        When the user selects "Yes"
        And continues

        # planning-permission
        Then the user should be at URL "planning-permission"
        And should see heading "Does the project have planning permission?"
        When the user selects "Should be in place by the time I make my full application"
        And continues

        # planning-permission-may-apply
        Then the user should be at URL "planning-permission-may-apply"
        And should see heading "You may be able to apply for a grant from this scheme"
        When the user continues

        # project-start
        Then the user should be at URL "project-start"
        And should see heading "Have you already started work on the project?"
        When the user selects "Yes, preparatory work"
        And continues

        # tenancy
        Then the user should be at URL "tenancy"
        And should see heading "Is the planned project on land the business owns?"
        When the user selects "No"
        And continues

        # tenancy-length
        Then the user should be at URL "tenancy-length"
        And should see heading "Do you have a tenancy agreement for 5 years after the final grant payment?"
        When the user selects "Yes"
        And continues

        # smaller-abattoir
        Then the user should be at URL "smaller-abattoir"
        And should see heading "Do you want to build a new smaller abattoir?"
        When the user selects "No"
        And continues

        # fruit-storage
        Then the user should be at URL "fruit-storage"
        And should see heading "Do you want to build new controlled atmosphere storage for top fruit?"
        When the user selects "Yes"
        And continues

        # project-cost
        Then the user should be at URL "project-cost"
        And should see heading "What is the estimated cost of the items?"
        When the user enters "250000" for "Enter amount"
        And continues

        # potential-amount [to be added in TGC-647]
        # Then the user should be at URL "potential-amount"
        # And should see heading "Potential grant funding"
        # And should see body "You may be able to apply for grant funding of up to £100,000 (40% of £250,000)."
        # And continues

        # remaining-costs
        Then the user should be at URL "remaining-costs"
        # And should see heading "Can you pay the remaining costs of £150,000?" [to be fixed in TGC-631]
        When the user selects "Yes"
        And continues

        # mechanisation
        Then the user should be at URL "mechanisation"
        And should see heading "Will this project use any mechanisation instead of manual labour?"
        When the user selects "No"
        And continues

        # future-customers
        Then the user should be at URL "future-customers"
        # And should see heading "Who will your new customers be after this project?" [TODO: raise defect]
        # When the user selects the following [TO BE IMPLEMENTED]
        #     | No change |
        And continues

        # collaboration
        Then the user should be at URL "collaboration"
        And should see heading "Will you work in partnership or collaborate with other farmers or producers?"
        # When the user selects "No" [TO BE IMPLEMENTED]
        And continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        And should see heading "How will this project improve the environment?"
        # When the user selects the following [TO BE IMPLEMENTED]
        #     | My project will not improve the environment |
        And continues

        # score-results
        Then the user should be at URL "score-results"
        # And should see "Average" for their project score [Scoring to be fixed in TGC-617]
        # And should see the following scoring answers
        #     | TOPIC                | ANSWERS                                     | SCORE |
        #     | Mechanisation        | No                                          | Weak  |
        #     | New customers        | No change                                   | Weak  |
        #     | Collaboration        | No                                          | Weak  |
        #     | Environmental impact | My project will not improve the environment | Weak  |
        When the user continues

        # business-details
        Then the user should be at URL "business-details"
        # And should see heading "Business details"  [TODO: raise defect]
        # When the user enters the following  [TO BE IMPLEMENTED]
        # | FIELD                            | VALUE             | ID               |
        # | Project name                     | Top Fruit Project | projectName      |
        # | Business name                    | Test Farm Ltd     | businessName     |
        # | Number of employees              | 15                | numberEmployees  |
        # | Annual business turnover (£)     | 7500000           | businessTurnover |
        # | Single Business Identifier (SBI) | 123456789         | sbi              |
        And continues

        # applying
        Then the user should be at URL "applying"
        And should see heading "Who is applying for this grant?"
        When the user selects "Agent"
        And continues

        # agents-details
        # Then the user should be at URL "agents-details" [TO BE FIXED ON TGC-631]
        # And should see heading "Agent's details"
        # When the user enters the following
        #     | FIELD                     | VALUE                                          |
        #     | First name                | John                                           |
        #     | Last name                 | Test-Agent                                     |
        #     | Business name             | Test Agency Ltd                                |
        #     | Email address             | cl-defra-gae-test-agent-email@equalexperts.com |
        #     | Confirm email address     | cl-defra-gae-test-agent-email@equalexperts.com |
        #     | Mobile phone number       | 07777 654321                                   |
        #     | Landline number           | 01604 654321                                   |
        #     | Address line 1            | High Street                                    |
        #     | Address line 2 (optional) | Denton                                         |
        #     | Town                      | Northampton                                    |
        #     | County (optional)         | Northamptonshire                               |
        #     | Postcode                  | NN7 3NN                                        |
        # And continues

        # applicant-details
        Then the user should be at URL "applicant-details"
        And should see heading "Applicant's details"
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
        And should see heading "Check your details"
        And continues

        # declaration
        Then the user should be at URL "declaration"
        And should see heading "Confirm and send"
        When the user confirms and sends

        # confirmation
        Then the user should be at URL "confirmation"
        And should see heading "Details submitted"
        And should see an "AV" reference number for their application
