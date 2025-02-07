Feature: Adding Value Journey

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

        # products-processed
        Then the user should be at URL "products-processed"
        And should see heading "What type of produce is being processed?"
        When the user selects "Arable produce"
        And continues

        # adding-value
        Then the user should be at URL "adding-value"
        And should see heading "How will your project add value to the produce?"
        When the user continues

        # project-impact
        Then the user should be at URL "project-impact"
        And should see heading "What impact will the project have?"
        When the user continues

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