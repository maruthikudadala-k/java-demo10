Feature: LoginScreenforRecruiters

Background: User is on the Login Screen
Given the user is on the Login Screen

@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the 'Show Password' option
  And I click the Login button
  Then the user should be redirected to the dashboard URL
  And the dashboard elements should be visible and accessible

  Examples:
    | email_id           | password           |
    | krishna@gmail.com  | SecurePassword123  |@session_active 
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the page response should be processed
  And I remain active on the dashboard for 30 minutes
  And I perform various actions on the dashboard
  Then the user should still be logged in

  Examples:
    | email              | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I check the 'Remember Me' option
  And I click the Login button
  Then the system processes the login request
  And the user logs out of the application
  And the user navigates back to the login screen
  Then the Email ID field is pre-filled with "<email_id>"

  Examples:
    | email_id             | password             |
    | recruiter@example.com | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed correctly

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@toggle_password_visibility
Scenario Outline: Login Screen for Recruiters
  Given the user enters a valid password in the Password field "<password>"
  When the user clicks the 'Show Password' option
  Then the password should be visible
  When the user clicks the 'Hide Password' option
  Then the password should not be visible
  Given the user enters a new password in the Password field "<new_password>"
  When the user clicks the 'Show Password' option again
  Then the new password should be visible

  Examples:
    | password            | new_password         |
    | ValidPassword123!   | ValidPassword456!    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile settings option on the dashboard
  Then the profile settings page is displayed correctly
  And the user's information is displayed accurately

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@validate_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the page response should be processed
  When I navigate to a different page within the application
  And I return to the dashboard
  Then the dashboard elements should be visible and the user should still be logged in

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the help icon on the dashboard
  Then the help resources page is displayed correctly
  And the help resources are relevant and accessible

  Examples:
    | email              | password           |
    | krishna@gmail.com  | validPassword123   |
@valid_login_logout
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks the Logout button on the dashboard
  Then the user is redirected to the login screen

  Examples:
    | email               | password          |
    | krishna@gmail.com   | validPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user navigates to the login screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password             |
    | recruiter@example.com  | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And all dashboard features are visible and accessible
  When the user clicks on a job posting
  Then the job posting details are displayed correctly

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is relevant and accurate

  Examples:
    | emailID           | password          |
    | krishna@gmail.com | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When the recruiter enters "<email>"
  And the recruiter enters "<password>"
  And the recruiter clicks the Login button
  Then the system processes the login request
  And the recruiter clicks on the settings option on the dashboard
  Then the settings page is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then I observe the page response after clicking the Login button
  And I click on the 'Forgot Password?' link
  And I enter "<reset_email_id>"
  And I submit the password reset request
  Then the password reset option is displayed

  Examples:
    | email_id             | password           | reset_email_id       |
    | recruiter@example.com | ValidPassword123   | recruiter@example.com  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed
  And the permissions options are relevant and accessible

  Examples:
    | email_id              | password          |
    | krishna@gmail.com     | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                    | password          |
    | recruiter@example.com    | SecurePassword123  |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | ValidPassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter the email ID "<email_id>"
  And I enter the password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications icon on the dashboard
  Then the notifications panel is displayed
  And the notifications are relevant and up-to-date

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I observe the state of the Login button
  Then the Login button should be enabled
  When I click the Login button
  Then the system processes the login request
  Then the URL should change to the dashboard URL
  And the dashboard elements should be visible and accessible

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly

  Examples:
    | email                 | password           |
    | krishna@gmail.com     | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And recruiter-specific features are visible and accessible
  And I click on the candidate search feature
  Then the candidate search functionality works as expected

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system should process the login request
  And I click on the settings icon on the dashboard
  Then the settings page should be displayed
  And the settings options should be relevant and accessible

  Examples:
    | email_id          | password           |
    | krishna@gmail.com | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email                   | password         |
    | recruiter@example.com   | SecurePassword123 |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed correctly
  And the feedback options are relevant and accessible

  Examples:
    | email             | password          |
    | krishna@gmail.com | ValidPassword123  |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed
  And the notifications options are relevant and accessible

  Examples:
    | email_id             | password            |
    | recruiter@example.com | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  And I observe the page response after clicking the Login button
  And I click on the profile option on the dashboard
  Then the profile page is displayed
  And the profile information is relevant and accurate

  Examples:
    | email_id           | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then I should see the page response
  When I click on the feedback option on the dashboard
  Then the feedback form should be displayed
  And the feedback options should be relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the page response is processed
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password             |
    | recruiter@example.com  | SecurePassword123    |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page should be displayed correctly
  And the settings options should be relevant and accessible

  Examples:
    | email                 | password            |
    | krishna@gmail.com     | ValidPassword123    |
@successful-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                      | password            |
    | recruiter@example.com      | SecurePassword123   |
@successful_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | emailID             | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id                | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id          | password          |
    | krishna@gmail.com | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When the user enters "<email>" in the Email ID field
  And the user enters "<password>" in the Password field
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the roles option on the dashboard
  Then the roles page should be displayed
  And the roles options should be relevant and accessible

  Examples:
    | email                  | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                     | password          |
    | recruiter@example.com     | SecurePassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password           |
    | krishna@gmail.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the profile option on the dashboard
  Then the profile page is displayed correctly

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id                | password           |
    | recruiter@example.com   | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed
  And the permissions options are relevant and accessible

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed

  Examples:
    | email_id           | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | emailID               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password           |
    | krishna@gmail.com   | SecurePassword123   |
@session_timeout_validation
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user remains active on the dashboard for an extended period
  And the user performs various actions on the dashboard
  Then the user is still logged in and the dashboard elements are accessible

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I observe the state of the Login button
  Then the Login button should be enabled
  When I click the Login button
  Then the system should process the login request
  Then the URL should change to the dashboard URL
  And the dashboard elements should be visible and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the 'Show Password' option
  And I click the Login button
  Then the user should be redirected to the dashboard
  And the dashboard elements should be visible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile settings option on the dashboard
  Then the profile settings page is displayed correctly
  And the user's information is displayed accurately

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<emailID>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click the Logout button on the dashboard
  Then the user is redirected to the Login Screen

  Examples:
    | emailID             | password         |
    | krishna@gmail.com   | validPassword123  |
@validate_show_hide_password
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid password "<password>"
  And I click the 'Show Password' option
  Then the password should be visible
  When I click the 'Hide Password' option
  Then the password should not be visible
  When I enter a new password "<new_password>"
  And I click the 'Show Password' option again
  Then the new password should be visible

  Examples:
    | password            | new_password       |
    | ValidPassword123!   | ValidPassword456!   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | emailID                | password             |
    | recruiter@example.com  | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email                 | password         |
    | krishna@gmail.com     | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications icon on the dashboard
  Then the notifications panel is displayed
  And the notifications are relevant and up-to-date

  Examples:
    | email_id             | password            |
    | recruiter@example.com | SecurePassword123   |
@valid_login_and_password_reset
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the 'Forgot Password?' link
  When I enter "<reset_email_id>" for password reset
  And I submit the password reset request
  Then the password reset request is submitted successfully

  Examples:
    | email_id              | password           | reset_email_id       |
    | recruiter@example.com  | ValidPassword123   | recruiter@example.com  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When the user enters "<email_id>"
  And the user enters "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user navigates to a different page within the application
  And the user returns to the dashboard
  Then the dashboard elements are visible and the user is still logged in

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the help icon on the dashboard
  Then the help resources page is displayed correctly
  And the help resources are relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | validPassword123    |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is relevant and accurate

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@successful_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                      | password            |
    | recruiter@example.com      | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page should be displayed
  And the preferences options should be relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  When I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@successful-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And all dashboard features are visible and accessible
  When the user clicks on a job posting
  Then the job posting details are displayed correctly

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email              | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id          | password           |
    | krishna@gmail.com | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page should be displayed

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I check the 'Remember Me' option
  And I click the Login button
  Then the system processes the login request
  And the user logs out of the application
  And the user navigates back to the login screen
  Then the Email ID field is pre-filled with "<email_id>"

  Examples:
    | email_id               | password              |
    | recruiter@example.com  | SecurePassword123     |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  
  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly

  Examples:
    | email_id          | password            |
    | krishna@gmail.com | SecurePassword123   |
@successful_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | emailID               | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I should see the recruiter-specific features
  And I click on the candidate search feature
  Then the candidate search functionality should work as expected

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                    | password           |
    | recruiter@example.com    | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When the user enters "<emailID>"
  And the user enters "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | emailID              | password            |
    | krishna@gmail.com    | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                   | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings icon on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@successful-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I observe the page response
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed
  And the notifications options are relevant and accessible

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I should see the page response after clicking the Login button
  And I click on the profile option on the dashboard
  Then the profile page should be displayed
  And the profile information should be relevant and accurate

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password           |
    | recruiter@example.com   | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When the user enters "<email_id>"
  And the user enters "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email_id            | password            |
    | krishna@gmail.com   | ValidPassword123    |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id            | password           |
    | krishna@gmail.com   | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                     | password          |
    | recruiter@example.com     | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When the user enters a valid email ID "<email>"
  And the user enters a valid password "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                  | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | ValidPassword123    |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | ValidPassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login-feedback
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | emailID            | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the page response is observed
  When the user navigates to a different page within the application
  And the user returns to the dashboard
  Then the user should be still logged in

  Examples:
    | email_id                | password             |
    | recruiter@example.com    | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the 'Show Password' option
  And I click the Login button
  Then the user should be redirected to the dashboard
  And the dashboard elements should be visible

  Examples:
    | email               | password            |
    | krishna@gmail.com   | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I observe the state of the Login button
  Then the Login button should be enabled
  When I click the Login button
  Then the user should be redirected to the dashboard
  And the URL should change to the dashboard URL
  And the dashboard elements should be visible and accessible

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123  |
@valid-login-logout
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks the Logout button on the dashboard
  Then the user is redirected to the Login Screen

  Examples:
    | email                | password          |
    | krishna@gmail.com    | validPassword123   |
@validate_recruiter_session
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the page response should be processed
  And the user remains active on the dashboard for 30 minutes
  And the user performs various actions on the dashboard
  Then the user should still be logged in and the dashboard elements are accessible

  Examples:
    | email_id           | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications icon on the dashboard
  Then the notifications panel is displayed
  And the notifications are relevant and up-to-date

  Examples:
    | email_id               | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And all dashboard features are visible and accessible
  When I click on a job posting to view details
  Then the job posting details are displayed correctly

  Examples:
    | email_id              | password            |
    | recruiter@example.com | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email              | password           |
    | krishna@gmail.com  | SecurePassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And recruiter-specific features are visible and accessible
  And I click on the candidate search feature
  Then the candidate search functionality works as expected

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123   |
@toggle_password_visibility
Scenario Outline: Login Screen for Recruiters
  Given the user enters a valid password in the Password field
  When the user clicks the 'Show Password' option
  Then the password is visible
  And the user clicks the 'Hide Password' option
  Then the password is not visible
  And the user enters a new password in the Password field
  When the user clicks the 'Show Password' option again
  Then the new password is visible

  Examples:
    | password            |
    | ValidPassword123!   |
    | ValidPassword456!   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>" in the Email ID field
  And I enter "<password>" in the Password field
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the 'Forgot Password?' link
  When I enter "<passwordResetEmail>" for password reset
  And the user submits the password reset request
  Then the password reset request is submitted successfully

  Examples:
    | emailID                   | password            | passwordResetEmail       |
    | recruiter@example.com     | ValidPassword123    | recruiter@example.com     |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile settings option on the dashboard
  Then the profile settings page is displayed correctly
  And the user's information is displayed accurately

  Examples:
    | email_id              | password           |
    | krishna@gmail.com     | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings icon on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email             | password          |
    | krishna@gmail.com | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is relevant and accurate

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed
  And the permissions options are relevant and accessible

  Examples:
    | email_id             | password            |
    | krishna@gmail.com    | ValidPassword123    |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  And I click on the notifications option on the dashboard
  Then the notifications page should be displayed
  And the notifications options should be relevant and accessible

  Examples:
    | email_id                | password           |
    | recruiter@example.com    | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I check the 'Remember Me' option
  And I click the Login button
  Then the system processes the login request
  And the user is logged out successfully
  And the Email ID field is pre-filled with the valid email ID

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password            |
    | krishna@gmail.com   | ValidPassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed

  Examples:
    | email                   | password             |
    | recruiter@example.com   | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                  | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed

  Examples:
    | email_id          | password           |
    | krishna@gmail.com | SecurePassword123   |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  Given I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I should observe the page response
  And I click on the activity log option on the dashboard
  Then the activity log page should be displayed
  And the activity log entries should be relevant and accurate

  Examples:
    | email                  | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the permissions option on the dashboard
  Then the permissions page is displayed correctly

  Examples:
    | email_id           | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And the user clicks the Login button
  Then the user observes the page response after clicking the Login button
  And the user clicks on the roles option on the dashboard
  Then the roles page should be displayed
  And the roles options should be relevant and accessible

  Examples:
    | email_id                | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email_id          | password          |
    | krishna@gmail.com | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password            |
    | krishna@gmail.com   | SecurePassword123   |
@valid_login_scenario
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the help icon on the dashboard
  Then the help resources page is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | validPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the page response should be observed
  And I click on the preferences option on the dashboard
  Then the preferences page should be displayed
  And the preferences options should be relevant and accessible

  Examples:
    | email                | password           |
    | krishna@gmail.com    | SecurePassword123   |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I should observe the page response after clicking the Login button
  And I click on the feedback option on the dashboard
  Then I should verify the feedback form is displayed
  And I should check that the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed
  And the permissions options are relevant and accessible

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the page response should process the login request
  And I click on the profile option on the dashboard
  Then the profile page should be displayed
  And the profile information should be relevant and accurate

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  And I click on the notifications option on the dashboard
  Then the notifications page should be displayed
  And the notifications options should be relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email_id            | password            |
    | krishna@gmail.com   | ValidPassword123    |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id             | password            |
    | recruiter@example.com | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password             |
    | recruiter@example.com  | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                   | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id             | password          |
    | recruiter@example.com | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id          | password           |
    | krishna@gmail.com | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id            | password           |
    | krishna@gmail.com   | SecurePassword123   |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                  | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed
  And the settings options are relevant and accessible

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I observe the state of the Login button
  Then the Login button should be enabled
  When I click the Login button
  Then the system processes the login request
  And the URL should change to the dashboard URL
  And the dashboard elements should be visible and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>" in the Email ID field
  And I enter "<password>" in the Password field
  And I check the 'Remember Me' option
  And I click the Login button
  Then the system processes the login request
  And the user is logged out successfully
  And the user navigates back to the login screen
  Then the Email ID field is pre-filled with the "<email>"

  Examples:
    | email                   | password              |
    | recruiter@example.com   | SecurePassword123     |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the 'Show Password' option
  And I click the Login button
  Then the user should be directed to the dashboard

  Examples:
    | emailID            | password           |
    | krishna@gmail.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications icon on the dashboard
  Then the notifications panel is displayed correctly
  And the notifications are relevant and up-to-date

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And all dashboard features are visible and accessible
  And I click on a job posting
  Then the job posting details are displayed correctly

  Examples:
    | email_id               | password             |
    | recruiter@example.com   | SecurePassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the user is redirected to the dashboard
  When I navigate to a different page within the application
  And I return to the dashboard
  Then the dashboard elements are visible and the user is still logged in

  Examples:
    | email                     | password            |
    | recruiter@example.com     | SecurePassword123    |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the help icon on the dashboard
  Then the help resources page is displayed correctly
  And the help resources are relevant and accessible

  Examples:
    | email_id           | password          |
    | krishna@gmail.com  | validPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And recruiter-specific features are visible and accessible
  And I click on the candidate search feature
  Then the candidate search functionality works as expected

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                   | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@toggle_password_visibility
Scenario Outline: Login Screen for Recruiters
  Given the user enters a valid password in the Password field
  When the user clicks the "Show Password" option
  Then the password should be visible
  When the user clicks the "Hide Password" option
  Then the password should not be visible
  When the user enters a new password in the Password field
  And the user clicks the "Show Password" option again
  Then the new password should be visible

  Examples:
    | password              | new_password         |
    | ValidPassword123!    | ValidPassword456!    |
@valid_login_and_password_reset
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the 'Forgot Password?' link
  When I enter "<reset_email_id>"
  And I submit the password reset request
  Then the password reset request is submitted successfully

  Examples:
    | email_id              | password           | reset_email_id       |
    | recruiter@example.com  | ValidPassword123   | recruiter@example.com  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password            |
    | krishna@gmail.com   | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings icon on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password         |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email              | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is relevant and accurate

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password            |
    | recruiter@example.com | SecurePassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                 | password           |
    | krishna@gmail.com     | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password           |
    | krishna@gmail.com   | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email_id          | password          |
    | krishna@gmail.com | ValidPassword123  |
@valid_login_logout
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click the Logout button on the dashboard
  Then the user is redirected to the Login Screen

  Examples:
    | email                 | password           |
    | krishna@gmail.com     | validPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | SecurePassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailID>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | emailID               | password            |
    | recruiter@example.com  | SecurePassword123   |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                      | password            |
    | recruiter@example.com      | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password          |
    | recruiter@example.com  | SecurePassword123  |
@validate_session_timeout
Scenario Outline: Login Screen for Recruiters
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the page response should be processed
  And I remain active on the dashboard for 30 minutes
  And I perform various actions on the dashboard
  Then the user should still be logged in and dashboard elements should be accessible

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I should observe the page response
  And I click on the settings option on the dashboard
  Then the settings page should be displayed
  And the settings options should be relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@successful_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id                 | password            |
    | recruiter@example.com    | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed

  Examples:
    | emailID                | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile settings option on the dashboard
  Then the profile settings page is displayed correctly
  And the user's information is displayed accurately

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid_login_feedback
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email_id          | password          |
    | krishna@gmail.com | ValidPassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed
  And the profile information is relevant and accurate

  Examples:
    | email_id          | password           |
    | krishna@gmail.com | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | SecurePassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email_id            | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email_id              | password           |
    | krishna@gmail.com     | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page should be displayed
  And the roles options should be relevant and accessible

  Examples:
    | email_id              | password            |
    | recruiter@example.com | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id                | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@successful_login
Scenario Outline: Login Screen for Recruiters
  Given the user navigates to the login screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly

  Examples:
    | email_id                | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed
  And the permissions options are relevant and accessible

  Examples:
    | email_id           | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                | password           |
    | krishna@gmail.com    | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page should be displayed
  And the roles options should be relevant and accessible

  Examples:
    | email_id                | password           |
    | recruiter@example.com   | SecurePassword123   |
@successful_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id                | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password         |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I observe the state of the Login button
  Then the Login button should be enabled
  When I click the Login button
  Then the system processes the login request
  Then the URL should change to the dashboard URL
  And the dashboard elements should be visible and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the 'Show Password' option
  And I click the Login button
  Then the user should be directed to the dashboard URL
  And the dashboard elements should be visible

  Examples:
    | emailID           | password            |
    | krishna@gmail.com | SecurePassword123   |
@toggle_password_visibility
Scenario Outline: Login Screen for Recruiters
  When the user enters a valid password in the Password field
  And the user clicks the 'Show Password' option
  Then the password should be visible
  When the user clicks the 'Hide Password' option
  Then the password should not be visible
  When the user enters a new password in the Password field
  And the user clicks the 'Show Password' option again
  Then the new password should be visible

  Examples:
    | password             | new_password        |
    | ValidPassword123!    | ValidPassword456!    |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile settings option on the dashboard
  Then the profile settings page is displayed correctly
  And the user's information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@active_session
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the user should observe the page response
  And the user remains active on the dashboard for 30 minutes
  And the user performs various actions on the dashboard
  Then the user should be still logged in and dashboard elements are accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the recruiter-specific features are visible and accessible
  And I click on the candidate search feature
  Then the candidate search functionality works as expected

  Examples:
    | email                | password           |
    | krishna@gmail.com    | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And all dashboard features are visible and accessible
  When I click on a job posting to view details
  Then the job posting details are displayed correctly

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click the Logout button on the dashboard
  Then the user is redirected to the Login Screen

  Examples:
    | email                | password          |
    | krishna@gmail.com    | validPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the preferences option on the dashboard
  Then the preferences page is displayed correctly

  Examples:
    | email                | password           |
    | krishna@gmail.com    | SecurePassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the page response should be processed
  And I click on the activity log option on the dashboard
  Then the activity log page should be displayed
  And the activity log entries should be relevant and accurate

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter a valid email ID "<email>"
  And I enter a valid password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings icon on the dashboard
  Then the settings page should be displayed
  And the settings options should be relevant and accessible

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the 'Forgot Password?' link
  And I enter "<reset_email>"
  And I submit the password reset request
  Then the password reset option is displayed

  Examples:
    | email                    | password          | reset_email            |
    | recruiter@example.com    | ValidPassword123   | recruiter@example.com   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email_id          | password           |
    | krishna@gmail.com | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123    |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login-retain-session
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  And I navigate to a different page within the application
  And I return to the dashboard
  Then the dashboard elements are visible and the user is still logged in

  Examples:
    | email_id                | password             |
    | recruiter@example.com   | SecurePassword123    |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login_recruiters
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailId>"
  And I enter "<password>"
  And I click the Login button
  Then the system should process the login request
  And I click on the help icon on the dashboard
  Then the help resources page should be displayed
  And the help resources should be relevant and accessible

  Examples:
    | emailId             | password           |
    | krishna@gmail.com   | validPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the page should respond successfully
  And I click on the profile option on the dashboard
  Then the profile page should be displayed
  And the profile information should be relevant and accurate

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                  | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email_id          | password          |
    | krishna@gmail.com | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter the email ID "<email>"
  And I enter the password "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I check the 'Remember Me' option
  And I click the Login button
  Then the system processes the login request
  And the user logs out of the application
  And the user navigates back to the Login Screen
  Then the Email ID field is pre-filled with "<emailID>"

  Examples:
    | emailID              | password           |
    | recruiter@example.com | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password             |
    | recruiter@example.com   | SecurePassword123    |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id           | password            |
    | krishna@gmail.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed
  And the notifications options are relevant and accessible

  Examples:
    | email_id                | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email              | password         |
    | krishna@gmail.com  | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the user should be directed to the dashboard
  And I click on the feedback option on the dashboard
  Then the feedback form should be displayed
  And the feedback options should be relevant and accessible

  Examples:
    | email              | password           |
    | krishna@gmail.com  | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                 | password           |
    | krishna@gmail.com     | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications icon on the dashboard
  Then the notifications panel is displayed
  And the notifications are relevant and up-to-date

  Examples:
    | email_id               | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                 | password          |
    | krishna@gmail.com     | ValidPassword123   |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the feedback option is accessible
  And the feedback form is displayed correctly
  And the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | emailID                 | password            |
    | recruiter@example.com   | SecurePassword123   |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  When I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email_id           | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id                | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed correctly
  And the feedback options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email_id           | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@successful-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                | password           |
    | krishna@gmail.com    | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly

  Examples:
    | emailID            | password          |
    | krishna@gmail.com  | SecurePassword123  |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly

  Examples:
    | email                    | password          |
    | recruiter@example.com    | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@successful_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  Then the Login button is enabled
  And I click the Login button
  Then the system processes the login request
  And the URL changes to the dashboard URL
  And the dashboard elements are visible and accessible

  Examples:
    | email_id             | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the 'Show Password' option
  And I click the Login button
  Then the user should be redirected to the dashboard

  Examples:
    | email_id           | password          |
    | krishna@gmail.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I check the 'Remember Me' option
  And I click the Login button
  Then the system processes the login request
  And the user logs out of the application
  And the user navigates back to the Login Screen
  Then the Email ID field is pre-filled with "<email_id>"

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@successful-login-logout
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the page response is observed
  And I click the Logout button on the dashboard
  Then the page response after logout is observed
  And the user is redirected to the Login Screen

  Examples:
    | email               | password         |
    | krishna@gmail.com   | validPassword123  |

    | recruiter@example.com | SecurePassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And recruiter-specific features are visible and accessible
  And I click on the candidate search feature
  Then the candidate search functionality works as expected

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for recruiters
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings icon on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password         |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the page response is displayed
  And I click on the notifications icon on the dashboard
  Then the notifications panel is displayed
  And the notifications are relevant and up-to-date

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the user should observe the page response after clicking the Login button
  And the user clicks on the feedback option on the dashboard
  Then the feedback form should be displayed
  And the feedback options should be relevant and accessible

  Examples:
    | email                | password            |
    | krishna@gmail.com    | ValidPassword123    |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the activity log option on the dashboard
  Then the activity log page should be displayed
  And the activity log entries should be relevant and accurate

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then I observe the page response after clicking the Login button
  And I click on the notifications option on the dashboard
  Then the notifications page should be displayed
  And the notifications options should be relevant and accessible

  Examples:
    | email_id              | password          |
    | recruiter@example.com | SecurePassword123 |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the help icon on the dashboard
  Then the help resources page is displayed correctly
  And the help resources are relevant and accessible

  Examples:
    | emailID             | password          |
    | krishna@gmail.com   | validPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I should see the dashboard
  And I click on the preferences option on the dashboard
  Then I should see the preferences page
  And the preferences options should be relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the user should see the page response
  And the user remains active on the dashboard
  And the user performs various actions on the dashboard
  Then the user should still be logged in

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user should see all dashboard features
  And the user clicks on a job posting
  Then the job posting details should be displayed correctly

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed
  And the preferences options are relevant and accessible

  Examples:
    | email              | password           |
    | krishna@gmail.com  | SecurePassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                   | password          |
    | recruiter@example.com   | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  And I observe the page response after clicking the Login button
  And I click on the profile settings option on the dashboard
  Then the profile settings page is displayed
  And the user's information is displayed accurately

  Examples:
    | email               | password           |
    | krishna@gmail.com   | ValidPassword123   |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then I should see the page response
  And I click on the settings option on the dashboard
  Then the settings page should be displayed
  And the settings options should be relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the page response should be processed
  And I click on the activity log option on the dashboard
  Then the activity log page should be displayed
  And the activity log entries should be relevant and accurate

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is relevant and accurate

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id               | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email_id            | password            |
    | krishna@gmail.com   | ValidPassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-login-recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | emailID               | password           |
    | recruiter@example.com | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And the recruiter clicks the Login button
  Then the system processes the login request
  And the recruiter clicks on the feedback option on the dashboard
  Then the feedback form is displayed correctly
  And the feedback options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id               | password           |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the 'Forgot Password?' link
  When I enter "<reset_email_id>" for password reset
  And the user submits the password reset request
  Then the password reset request is submitted successfully

  Examples:
    | email_id              | password          | reset_email_id       |
    | recruiter@example.com  | ValidPassword123  | recruiter@example.com  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email               | password         |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  When I click on the roles option on the dashboard
  Then the roles page is displayed
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email              | password         |
    | krishna@gmail.com  | SecurePassword123 |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailId>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | emailId           | password           |
    | krishna@gmail.com | ValidPassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then I observe the page response after clicking the Login button
  And I click on the notifications option on the dashboard
  Then the notifications page should be displayed
  And the notifications options should be relevant and accessible

  Examples:
    | email_id              | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed
  And the feedback options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | SecurePassword123  |
@toggle_password_visibility
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter a valid password in the Password field "<password>"
  And I click the 'Show Password' option
  Then the password should be visible
  When I click the 'Hide Password' option
  Then the password should not be visible
  When I enter a new password in the Password field "<new_password>"
  And I click the 'Show Password' option again
  Then the new password should be visible

  Examples:
    | password             | new_password         |
    | ValidPassword123!    | ValidPassword456!    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email_id             | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_recruiter_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email_id               | password          |
    | recruiter@example.com  | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id          | password            |
    | krishna@gmail.com | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email_id              | password            |
    | recruiter@example.com  | SecurePassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123   |
@valid-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email                     | password          |
    | recruiter@example.com     | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And the user clicks the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | emailID               | password          |
    | recruiter@example.com | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed correctly

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | email                   | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>" in the Email ID field
  And I enter "<password>" in the Password field
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id                | password           |
    | recruiter@example.com   | SecurePassword123   |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the permissions option on the dashboard
  Then the permissions page is displayed correctly
  And the permissions options are relevant and accessible

  Examples:
    | email               | password            |
    | krishna@gmail.com   | ValidPassword123    |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email_id           | password          |
    | krishna@gmail.com  | SecurePassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<emailId>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the profile option on the dashboard
  Then the profile page is displayed correctly
  And the profile information is displayed accurately

  Examples:
    | emailId              | password          |
    | krishna@gmail.com    | ValidPassword123  |
@successful-login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  When I click on the notifications option on the dashboard
  Then the notifications page is displayed correctly
  And the notifications options are relevant and accessible

  Examples:
    | email                   | password            |
    | recruiter@example.com   | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed correctly

  Examples:
    | email              | password          |
    | krishna@gmail.com  | ValidPassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<emailID>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the activity log option on the dashboard
  Then the activity log page is displayed correctly
  And the activity log entries are relevant and accurate

  Examples:
    | emailID              | password            |
    | recruiter@example.com | SecurePassword123   |
@valid_login
Scenario Outline: Login Screen for Recruiters
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the preferences option on the dashboard
  Then the preferences page is displayed correctly
  And the preferences options are relevant and accessible

  Examples:
    | email                | password          |
    | krishna@gmail.com    | SecurePassword123  |
@valid_login_recruiter
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the login screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the settings option on the dashboard
  Then the settings page is displayed

  Examples:
    | email               | password          |
    | krishna@gmail.com   | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the notifications option on the dashboard
  Then the notifications page is displayed

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid-recruiter-login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email_id>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the roles option on the dashboard
  Then the roles page is displayed correctly
  And the roles options are relevant and accessible

  Examples:
    | email_id              | password           |
    | recruiter@example.com  | SecurePassword123  |
@valid-login
Scenario Outline: Login Screen for Recruiters
  Given the recruiter is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And I click on the feedback option on the dashboard
  Then the feedback form is displayed

  Examples:
    | email                | password          |
    | krishna@gmail.com    | ValidPassword123  |
@valid_login
Scenario Outline: Login Screen for Recruiters
  Given the user is on the Login Screen
  When I enter "<email>"
  And I enter "<password>"
  And I click the Login button
  Then the system processes the login request
  And the user clicks on the settings option on the dashboard
  Then the settings page is displayed correctly
  And the settings options are relevant and accessible

  Examples:
    | email                | password         |
    | krishna@gmail.com    | ValidPassword123  |
