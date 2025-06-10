Feature: Task Lists

    Background:
        # task list
        Given the user navigates to "/adding-value-tasklist"
        Then the user should be at URL "adding-value-tasklist"
        Then the user should see heading "Adding Value grant"
        And should see the following task list
            | 1. Check before you start |                  |
            | Business status           | Not yet started  |
            | Project preparation       | Not yet started  |
            |                           |                  |
            | 2. Facilities             |                  |
            | Facilities                | Not yet started  |
            |                           |                  |
            | 3. Costs                  |                  |
            | Costs                     | Not yet started  |
            |                           |                  |
            | 4. Impact                 |                  |
            | Produce                   | Cannot start yet |
            | Project                   | Cannot start yet |
            | Mechanisation             | Not yet started  |
            | Future customers	        | Not yet started  |
            | Collaboration	            | Not yet started  |
            | Environment	            | Not yet started  |
            |                           |                  |
            | 5. Finalisation           |                  |
            | Score results             | Cannot start yet |
            | Business Details	        | Not yet started  |
            | Who is applying?	        | Not yet started  |
            | Agent                     | Cannot start yet |
            | Applicant                 | Cannot start yet |
            | Check your details        | Cannot start yet |
            | Confirm and send          | Cannot start yet |

    @wip
    Scenario: Complete a task
        When the user selects task "Business status"

        # nature-of-business
        Then the user should be at URL "nature-of-business"
        And should see banner "Business status"
        And should see section title "Business status"
        And should see heading "What is your business?"
        When the user selects "A grower or producer of agricultural or horticultural produce"
        And continues

        # legal-status
        Then the user should be at URL "legal-status"
        And should see banner "Business status"
        And should see section title "Business status"
        And should see heading "What is the legal status of the business?"
        When the user selects "Sole trader"
        And continues

        # country
        Then the user should be at URL "country"
        And should see banner "Business status"
        And should see section title "Business status"
        And should see heading "Is the planned project in England?"
        When the user selects "Yes"
        And continues

        # summary
        Then the user should be at URL "summary"
        And should see the following "Business status" task summary
            | What is your business?                    | A grower or producer of agricultural or horticultural produce |
            | What is the legal status of the business? | Sole trader                                                   |
            | Is the planned project in England?        | Yes                                                           |
        When the user confirms and continues

        # task list
        Given the user navigates to "/adding-value-tasklist"
        Then the user should be at URL "adding-value-tasklist"
        Then the user should see heading "Adding Value grant"
        And should see the following task list
            | 1. Check before you start |                  |
            | Business status           | Completed        |
            | Project preparation       | Not yet started  |
            |                           |                  |
            | 2. Facilities             |                  |
            | Facilities                | Not yet started  |
            |                           |                  |
            | 3. Costs                  |                  |
            | Costs                     | Not yet started  |
            |                           |                  |
            | 4. Impact                 |                  |
            | Produce                   | Cannot start yet |
            | Project                   | Cannot start yet |
            | Mechanisation             | Not yet started  |
            | Future customers	        | Not yet started  |
            | Collaboration	            | Not yet started  |
            | Environment	            | Not yet started  |
            |                           |                  |
            | 5. Finalisation           |                  |
            | Score results             | Cannot start yet |
            | Business Details	        | Not yet started  |
            | Who is applying?	        | Not yet started  |
            | Agent                     | Cannot start yet |
            | Applicant                 | Cannot start yet |
            | Check your details        | Cannot start yet |
            | Confirm and send          | Cannot start yet |
