Feature: Adding Value Scoring

    Scenario: User changes their answer to a scoring question
        # start
        Given the user navigates to "/adding-value/start"
        Then the user should be at URL "start"
        When the user clicks on "Start now"

        # what-is-your-business
        Then the user should be at URL "what-is-your-business"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # what-is-the-legal-status-of-the-business
        Then the user should be at URL "what-is-the-legal-status-of-the-business"
        When the user selects "Sole trader"
        And continues

        # is-the-planned-project-in-england
        Then the user should be at URL "is-the-planned-project-in-england"
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
        When the user continues

        # collaboration
        Then the user should be at URL "collaboration"
        When the user continues

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        When the user continues

        # score-results
        Then the user should be at URL "score-results"
        And should see heading "Score results"
        And should see "Strong" for their project score
        And should see the following score results
            | TOPIC                | ANSWERS                                  | SCORE   | FUNDING PRIORITIES                                                                            |
            | Produce processed    | Arable produce                           | Strong  | Create and expand processing capacity to provide more English-grown food for consumers to buy |
            | Adding value         | Introducing a new product to your farm   | Average | Improve processing and supply chains                                                          |
            |                      |                                          |         | Grow your business                                                                            |
            | Project impact       | Increasing range of added-value products | Average | Improve processing and supply chains                                                          |
            |                      |                                          |         | Grow your business                                                                            |
            | Future customers     | Processors                               | Weak    | Improve processing and supply chains                                                          |
            |                      |                                          |         | Grow your business                                                                            |
            | Collaboration        | Yes                                      | Strong  | Improve processing and supply chains                                                          |
            |                      |                                          |         | Encourage collaboration and partnerships                                                      |
            | Environmental impact | Renewable energy                         | Strong  | Improve the environment                                                                       |
            |                      | Energy efficiency                        |         |                                                                                               |
            |                      | Water efficiency                         |         |                                                                                               |

        # change scoring question
        When the user chooses to change their "Environmental impact" answer

        # environmental-impact
        Then the user should be at URL "environmental-impact"
        When the user continues

        # score-results
        Then the user should be at URL "score-results"
