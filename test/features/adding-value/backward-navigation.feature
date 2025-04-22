Feature: Adding Value Backward Navigation

    Scenario: Explore all backward navigation options
        # start
        Given the user navigates to "/adding-value/start"
        And should see heading "Check if you can apply for a Farming Transformation Fund Adding Value Grant"
        When the user clicks on "Start now"

        # nature-of-business
        Then the user should be at URL "nature-of-business"
        When the user navigates backward
        Then the user should be at URL "start"
        When the user clicks on "Start now"
        Then the user should be at URL "nature-of-business"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # legal-status
        Then the user should be at URL "legal-status"
        When the user navigates backward
        Then the user should be at URL "nature-of-business"
        When the user continues
        Then the user should be at URL "legal-status"
        And should see heading "What is the legal status of the business?"
        When the user selects "Sole trader"
        And continues

        # country
        Then the user should be at URL "country"
        When the user navigates backward
        Then the user should be at URL "legal-status"
        When the user continues
        Then the user should be at URL "country"
        And should see heading "Is the planned project in England?"
        When the user selects "Yes"
        And continues

        # planning-permission
        Then the user should be at URL "planning-permission"
        When the user navigates backward
        Then the user should be at URL "country"
        When the user continues
        Then the user should be at URL "planning-permission"
        And should see heading "Does the project have planning permission?"
        When the user selects "Not needed"
        And continues

        # project-start
        Then the user should be at URL "project-start"
        When the user navigates backward
        Then the user should be at URL "planning-permission"
        When the user continues
        Then the user should be at URL "project-start"
        And should see heading "Have you already started work on the project?"
        When the user selects "Yes, preparatory work"
        And continues

        # tenancy
        Then the user should be at URL "tenancy"
        When the user navigates backward
        Then the user should be at URL "project-start"
        When the user continues
        Then the user should be at URL "tenancy"
        And should see heading "Is the planned project on land the business owns?"
        When the user selects "No"
        And continues

        # tenancy-length
        Then the user should be at URL "tenancy-length"
        When the user navigates backward
        Then the user should be at URL "tenancy"
        When the user continues
        Then the user should be at URL "tenancy-length"
        And should see heading "Do you have a tenancy agreement for 5 years after the final grant payment?"
        When the user selects "No"
        And continues

        # may-apply-tenancy-length
        Then the user should be at URL "may-apply-tenancy-length"
        When the user navigates backward
        Then the user should be at URL "tenancy-length"
        When the user continues
        Then the user should be at URL "may-apply-tenancy-length"
        When the user continues

        # smaller-abattoir
        Then the user should be at URL "smaller-abattoir"
        When the user navigates backward
        Then the user should be at URL "tenancy-length"
        When the user continues

        # explore smaller abattoir journey

        # smaller-abattoir
        Then the user should be at URL "smaller-abattoir"
        And should see heading "Do you want to build a new smaller abattoir?"
        When the user selects "Yes"
        And continues

        # other-farmers
        Then the user should be at URL "other-farmers"
        When the user navigates backward

        # explore top fruit journey

        # smaller-abattoir
        Then the user should be at URL "smaller-abattoir"
        And should see heading "Do you want to build a new smaller abattoir?"
        When the user selects "No"
        And continues

        # fruit-storage
        Then the user should be at URL "fruit-storage"
        When the user navigates backward
        Then the user should be at URL "smaller-abattoir"
        When the user continues
        Then the user should be at URL "fruit-storage"
        And should see heading "Do you want to build new controlled atmosphere storage for top fruit?"
        When the user selects "No"
        And continues

        # explore project items-only journey

        # project-items
        Then the user should be at URL "project-items"
        When the user navigates backward
        Then the user should be at URL "fruit-storage"
        When the user continues
        Then the user should be at URL "project-items"
        And should see heading "What eligible items does your project need?"
        When the user selects the following
            | Constructing or improving buildings for processing |
        And continues

        # storage
        Then the user should be at URL "storage"
        When the user navigates backward
        Then the user should be at URL "project-items"
        When the user continues
        Then the user should be at URL "storage"
        And should see heading "Does your project also need storage facilities?"
        When the user selects "Yes, we will need storage facilities"
        And continues

        # project-cost
        Then the user should be at URL "project-cost"
        When the user navigates backward
        Then the user should be at URL "storage"
        When the user continues
        Then the user should be at URL "project-cost"
        And should see heading "What is the estimated cost of the items?"
        When the user enters "62500" for "Enter amount"
        And continues

        # potential-funding
        Then the user should be at URL "potential-funding"
        When the user navigates backward
        Then the user should be at URL "project-cost"
        When the user continues
        Then the user should be at URL "potential-funding"
        And should see heading "Potential grant funding"
        When the user continues

        # remaining-costs
        Then the user should be at URL "remaining-costs"
        When the user navigates backward
        Then the user should be at URL "potential-funding"
        When the user continues
        Then the user should be at URL "remaining-costs"
        And should see heading "Can you pay the remaining costs of £37,500?"
        When the user selects "Yes"
        And continues

        # produce-processed
        Then the user should be at URL "produce-processed"
        When the user navigates backward
        Then the user should be at URL "remaining-costs"
        When the user continues
        Then the user should be at URL "produce-processed"
        And should see heading "What type of produce is being processed?"
        When the user selects "Arable produce"
        And continues

        # how-adding-value
        Then the user should be at URL "how-adding-value"
        When the user navigates backward
        Then the user should be at URL "produce-processed"
        When the user continues
        Then the user should be at URL "how-adding-value"
        And should see heading "How will this project add value to the produce?"
        When the user selects "Introducing a new product to your farm"
        And continues

        # project-impact
        Then the user should be at URL "project-impact"
        When the user navigates backward
        Then the user should be at URL "how-adding-value"
        When the user continues
        Then the user should be at URL "project-impact"
        And should see heading "What impact will this project have?"
        When the user selects the following
            | Increasing range of added-value products |
        And continues

        # mechanisation
        Then the user should be at URL "mechanisation"
        When the user navigates backward
        Then the user should be at URL "project-impact"
        When the user continues
        Then the user should be at URL "mechanisation"
        And should see heading "Will this project use any mechanisation instead of manual labour?"
        When the user selects "Yes"
        And continues

        # manual-labour-amount
        Then the user should be at URL "manual-labour-amount"
        When the user navigates backward
        Then the user should be at URL "mechanisation"
        When the user continues
        Then the user should be at URL "manual-labour-amount"
        And should see heading "How much manual labour will the mechanisation be equal to?"
        When the user selects "More than 10%"
        And continues

        # future-customers
        Then the user should be at URL "future-customers"
        When the user navigates backward
        Then the user should be at URL "manual-labour-amount"
        When the user continues
        Then the user should be at URL "future-customers"
        # And should see heading "Who will your new customers be after this project?" [TODO: raise defect]
        # When the user selects the following [TO BE IMPLEMENTED]
        #    | Processors |
        And continues

        # collaboration
        Then the user should be at URL "collaboration"
        When the user navigates backward
        Then the user should be at URL "future-customers"
        When the user continues
        Then the user should be at URL "collaboration"
        And should see heading "Will you work in partnership or collaborate with other farmers or producers?"
        # When the user selects "Yes" [TO BE IMPLEMENTED]
        And continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        When the user navigates backward
        Then the user should be at URL "collaboration"
        When the user continues
        Then the user should be at URL "environmental-impact"
        And should see heading "How will this project improve the environment?"
        # When the user selects the following [TO BE IMPLEMENTED]
        #    | Renewable energy |
        And continues

        # score-results
        Then the user should be at URL "score-results"
        When the user navigates backward
        Then the user should be at URL "environmental-impact"
        When the user continues
        Then the user should be at URL "score-results"
        When the user continues

        # business-details
        Then the user should be at URL "business-details"
        When the user navigates backward
        Then the user should be at URL "score-results"
        When the user continues
        Then the user should be at URL "business-details"
        # And should see heading "Business details"  [TODO: raise defect]
        # When the user enters the following [TO BE IMPLEMENTED]
        #     | FIELD                            | VALUE                | ID               |
        #     | Project name                     | Adding Value Project | projectName      |
        #     | Business name                    | Test Farm Ltd        | businessName     |
        #     | Number of employees              | 10                   | numberEmployees  |
        #     | Annual business turnover (£)     | 20000000             | businessTurnover |
        #     | Single Business Identifier (SBI) | 123456789            | sbi              |
        And continues

        # applying
        Then the user should be at URL "applying"
        When the user navigates backward
        Then the user should be at URL "business-details"
        When the user continues
        Then the user should be at URL "applying"
        And should see heading "Who is applying for this grant?"
        When the user selects "Agent"
        And continues

        # agents-details
        # Then the user should be at URL "agents-details" [TO BE FIXED ON TGC-631]
        When the user navigates backward
        Then the user should be at URL "applying"
        When the user continues
        # Then the user should be at URL "agents-details"
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
        And continues

        # applicant-details
        Then the user should be at URL "applicant-details"
        When the user navigates backward
        # Then the user should be at URL "agents-details" [TO BE FIXED ON TGC-631]
        When the user continues
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
        When the user navigates backward
        Then the user should be at URL "applicant-details"
        When the user continues
        Then the user should be at URL "check-details"
        And should see heading "Check your details"
        When the user continues

        # declaration
        Then the user should be at URL "declaration"
        When the user navigates backward
        Then the user should be at URL "check-details"
        When the user continues
        Then the user should be at URL "declaration"
        And should see heading "Confirm and send"
