Feature: Login functionality

    In order to ensure login functionality works.
    I want to run the cucumber test to verify it works

    Background:
        Given the login page is open successful

    Scenario: login valid
        When users enter username 'tomsmith' and password 'SuperSecretPassword!'
        Then the message "You logged into a secure area!" should be displayed on the screen

    Scenario Outline: login invalid
        When users enter username '<username>' and password '<password>'
        Then the message "<message>" should be displayed on the screen

        Examples:
            | username    | password             | message                   |
            | tomsmith    | defabc               | Your password is invalid! |
            | tungdeptrai | SuperSecretPassword! | Your username is invalid! |