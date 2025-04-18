Feature: Adding Value Smaller Abattoir Journey

    Scenario: Successfully apply for a grant on the Smaller Abattoir journey
        - using mechanisation
        - receiving a strong score
        - as the applicant

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
        When the user selects "Sole trader"
        And continues

        # country
        Then the user should be at URL "country"
        And should see heading "Is the planned project in England?"
        When the user selects "Yes"
        And continues

        # planning-permission
        Then the user should be at URL "planning-permission"
        And should see heading "Does the project have planning permission?"
        When the user selects "Secured"
        And continues

        # project-start
        Then the user should be at URL "project-start"
        And should see heading "Have you already started work on the project?"
        When the user selects "No, we have not done any work on this project yet"
        And continues

        # tenancy
        Then the user should be at URL "tenancy"
        And should see heading "Is the planned project on land the business owns?"
        When the user selects "Yes"
        And continues

        # smaller-abattoir
        Then the user should be at URL "smaller-abattoir"
        And should see heading "Do you want to build a new smaller abattoir?"
        When the user selects "Yes"
        And continues

        # other-farmers
        Then the user should be at URL "other-farmers"
        And should see heading "Will this abattoir provide services to other farmers?"
        When the user selects "Yes"
        And continues

        # project-items
        Then the user should be at URL "project-items"
        And should see heading "What eligible items does your project need?"
        When the user selects the following
            | Constructing or improving buildings for processing |
        And continues

        # storage
        Then the user should be at URL "storage"
        And should see heading "Does your project also need storage facilities?"
        When the user selects "Yes, we will need storage facilities"
        And continues

        # project-cost
        Then the user should be at URL "project-cost"
        And should see heading "What is the estimated cost of the items?"
        When the user enters "100000" for "Enter amount"
        And continues

        # potential-amount [to be added in TGC-647]
        # Then the user should be at URL "potential-amount"
        # And should see heading "Potential grant funding"
        # And should see body "You may be able to apply for a grant of up to £52,500, based on the total estimated cost of £150,000."
        # And continues

        # remaining-costs
        Then the user should be at URL "remaining-costs"
        # And should see heading "Can you pay the remaining costs of £97,500?" [to be fixed in TGC-631]
        When the user selects "Yes"
        And continues

        # produce-processed
        Then the user should be at URL "produce-processed"
        And should see heading "What type of produce is being processed?"
        When the user selects "Wild venison meat produce"
        And continues

        # how-adding-value
        Then the user should be at URL "how-adding-value"
        And should see heading "How will this project add value to the produce?"
        When the user selects "Introducing a new product to your farm"
        And continues

        # project-impact
        Then the user should be at URL "project-impact"
        And should see heading "What impact will this project have?"
        When the user selects the following
            | Increasing range of added-value products  |
            | Increasing volume of added-value products |
        And continues

        # mechanisation
        Then the user should be at URL "mechanisation"
        And should see heading "Will this project use any mechanisation instead of manual labour?"
        When the user selects "Yes"
        And continues

        # manual-labour-amount
        Then the user should be at URL "manual-labour-amount"
        And should see heading "How much manual labour will the mechanisation be equal to?"
        When the user selects "More than 10%"
        And continues

        # future-customers
        Then the user should be at URL "future-customers"
        # And should see heading "Who will your new customers be after this project?" [TODO: raise defect]
        # When the user selects the following [TO BE IMPLEMENTED]
        #     | Processors  |
        #     | Wholesalers |
        And continues

        # collaboration
        Then the user should be at URL "collaboration"
        And should see heading "Will you work in partnership or collaborate with other farmers or producers?"
        #  the user selects "Yes" [TO BE IMPLEMENTED]
        And continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        And should see heading "How will this project improve the environment?"
        # When the user selects the following [TO BE IMPLEMENTED]
        #     | Renewable energy  |
        #     | Energy efficiency |
        And continues

        # score-results
        Then the user should be at URL "score-results"
        # And should see "Strong" for their project score [Scoring to be fixed in TGC-617]
        # And should see the following scoring answers
        #     | TOPIC                | ANSWERS                                   | SCORE   |
        #     | Produce processed    | Wild venison meat produce                 | Strong  |
        #     | Adding value         | Introducing a new product to your farm    | Strong  |
        #     | Project impact       | Increasing range of added-value products  | Average |
        #     |                      | Increasing volume of added-value products |         |
        #     | Mechanisation        | Yes, more than 10%                        | Strong  |
        #     | New customers        | Processors                                | Weak    |
        #     |                      | Wholesalers                               |         |
        #     | Collaboration        | Yes                                       | Strong  |
        #     | Environmental impact | Renewable energy                          | Strong  |
        #     |                      | Energy efficiency                         |         |
        When the user continues

        # business-details
        Then the user should be at URL "business-details"
        # And should see heading "Business details"  [TODO: raise defect]
        # When the user enters the following  [TO BE IMPLEMENTED]
        #     | FIELD                            | VALUE                    | ID               |
        #     | Project name                     | Smaller Abattoir Project | projectName      |
        #     | Business name                    | Test Farm Ltd            | businessName     |
        #     | Number of employees              | 5                        | numberEmployees  |
        #     | Annual business turnover (£)     | 2000000                  | businessTurnover |
        #     | Single Business Identifier (SBI) | 123456789                | sbi              |
        And continues

        # applying
        Then the user should be at URL "applying"
        And should see heading "Who is applying for this grant?"
        When the user selects "Applicant"
        And continues

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
