Feature: Login test

    Test login functional

    Scenario: Valid
        Given login successfully
        When users enter valid <username> and <password>
        Then "You logged into a secure area!" result should be appeared on the screen

    Scenario Outline: Invalid
        Given login unsuccessfully
        When user enter invalid username '<username>'
        And and password '<password>'
        Then "Your username is invalid!" result should be appeared on the screen

        Examples:
            | username    | password |
            | abcdef      | defabc   |
            | tungdeptrai | tungpro  |