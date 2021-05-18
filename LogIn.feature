#USER STORY:
#As a user, I want to log in the app so that I can access the homepage.

##aber on99 

Feature: LogIn 
Description: This feature will test a LogIn functionality

Scenario: Successful login when a user keys in valid credentials
Given the user is on the login page
When the user inputs the correct username And the user inputs correct password
And the user clicks the login button Then the user is authenticated
And the user is directed to the homepage
And a welcome back message is displayed

Scenario: Unsuccessful login when a user keys in invalid credentials

Given the user is on the login page
When the user inputs username 
And the user inputs password
But the username or the password is wrong
Then a wrong username and/or password message is displayed
And a try again button is displayed
When the user clicks the try again button
Then the user is redirected to the login page

Scenario: Unsuccessful login when a user does not fill in all credentials

Given the user is on the login page
When the user inputs username
And the user clicks the login button
Then a you missed some information message is displayed
And a try again button is displayed
When the user clicks the try again button
Then the user is redirected to the login page

Scenario: Unsuccessful login when a user failed to key in valid credentials for >3 times

Given the user is on the login page
When the user inputs username 
And the user inputs password
But the username or the password is wrong >3
Then forget username or password message is displayed
And an ok button is displayed
When the user clicks the ok button
Then the user is redirected to a forget username or password page

Scenario: The user forgets the username or password

Given the user is on the login page
When the user clicks forget username or password button
Then the user is redirected to a forget username or password page
