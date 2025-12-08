Feature: UserRegistrationProcess

Background: User is on the Registration Page
Given the user is on the Registration Page

@valid-uppercase-email-registration
Scenario Outline: User Registration with Uppercase Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in with the newly created account

  Examples:
    | email               | password            | confirmation        |
    | KRISHNA@GMAIL.COM  | ValidPassword123    | ValidPassword123     |@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then I should see a success message
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email               | password           | confirmation_password |
    | krishna@gmail.com   | ValidPassword123   | ValidPassword123      |
@valid-email_registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password             | confirmation        |
    | krishna_smith@gmail.com   | ValidPassword123     | ValidPassword123     |
@valid-email-registration
Scenario Outline: Validate Email Registration with Special Characters
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then I should see a success message on the screen
  And I should receive a confirmation email in the inbox
  And I log in using the newly created account

  Examples:
    | email                   | password             |
    | user+test@gmail.com    | ValidPassword123!    |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using "<email>"

  Examples:
    | email               | password             | confirmation_password   |
    | krishna@gmail.com   | StrongPassword123!   | StrongPassword123!      |
@valid-email-plus-sign
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  When I log in using the newly created account
  Then the user should be successfully logged in to the platform

  Examples:
    | email                     | password              | confirmation         |
    | krishna+test@gmail.com   | ValidPassword123      | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using "<email>" and "<password>"

  Examples:
    | email                   | password              | confirmation          |
    | user..name@gmail.com    | ValidPassword123!     | ValidPassword123!      |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email Containing Hyphens
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password in the confirmation field
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user can log in using the newly created account

  Examples:
    | email                     | password             | confirmation         |
    | krishna-hyphen@gmail.com  | ValidPassword123     | ValidPassword123      |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message appears
  And the user receives a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                    | password            |
    | uniqueuser@example.com   | validpassword123    |
@valid_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation_password>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email              | password             | confirmation_password     |
    | krishna@gmail.com  | ValidPassword123!    | ValidPassword123!         |
@invalid-registration
Scenario Outline: User Registration Process with Non-Matching Passwords
  Given the user is on the Registration Page
  When the user enters a unique email address "<email>"
  And the user enters a password "<password>"
  And the user enters a different password "<confirmation_password>"
  And the user clicks the Register button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password             | confirmation_password     |
    | krishna@gmail.com   | ValidPassword123     | DifferentPassword456       |
@unique_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email              | password              | confirmation          |
    | krishna@gmail.com  | ValidPassword123!     | ValidPassword123!     |
@valid-numeric-domain-registration
Scenario Outline: User Registration with Numeric Domain Email
  Given the user is on the Registration Page
  When the user enters a valid email address "<email>"
  And the user enters a valid password "<password>"
  And the user confirms the password "<confirmation>"
  And the user clicks the Register button
  Then the user sees a success message
  And the user receives a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                  | password            | confirmation        |
    | user123@123domain.com  | SecurePassword123   | SecurePassword123    |
@valid-email-registration
Scenario Outline: User Registration with Single Character Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email          | password | confirmation |
    | a@example.com  | Pass123  | Pass123      |
    | b@domain.com   | Pass456  | Pass456      |
@valid-email-short-domain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in with "<email>" and "<password>"

  Examples:
    | email         | password            | confirmation        |
    | user@a.com   | ValidPassword123    | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message appears
  And a confirmation email is received in the inbox
  And I log in using the newly created account

  Examples:
    | email                  | password             |
    | user!name@gmail.com   | ValidPassword123     |
@long-username-registration
Scenario Outline: Validate Registration with Long Username Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the account with "<email>"

  Examples:
    | email                       | password              | confirmation_password    |
    | longusername@example.com    | ValidPassword123!     | ValidPassword123!        |
@valid-email-with-numbers
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation_password>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the "<email>"

  Examples:
    | email              | password            | confirmation_password |
    | user123@gmail.com  | ValidPassword123    | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm "<confirmation_password>" in the confirmation field
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                   | password              | confirmation_password  |
    | krishna@gmail.com      | ValidPassword123      | ValidPassword123       |
@trim_email_spaces
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the account

  Examples:
    | email                  | password           | confirmation_password |
    | " krishna@gmail.com "  | "validPassword123" | "validPassword123"    |
@valid-registration-long-domain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account
  
  Examples:
    | email                     | password              | confirmation          |
    | user@longdomainname.com   | ValidPassword123!     | ValidPassword123!      |
@generic-tld-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>"
  And the user enters "<password>"
  And the user confirms the password "<confirmation_password>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email            | password             | confirmation_password |
    | user@example     | ValidPassword123     | ValidPassword123      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation>"
  And I click the Register button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using "<email>"

  Examples:
    | email      | password            | confirmation        |
    | a@b.com   | ValidPassword123    | ValidPassword123     |
@valid-registration
Scenario Outline: Validate email address in lowercase during registration
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email              | password            | confirmation        |
    | krishna@gmail.com  | ValidPassword123    | ValidPassword123     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                | password            | confirmation         |
    | user123@gmail.com   | ValidPassword123    | ValidPassword123      |
@valid-email-mixed-case
Scenario Outline: User Registration Process with Mixed Case Email
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation_password>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user should log in using the newly created account

  Examples:
    | email                   | password               | confirmation_password    |
    | KrIsHnA@gmail.com      | ValidPassword123!      | ValidPassword123!         |
@empty-password-check
Scenario Outline: User Registration with Empty Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I leave the password field empty
  And I confirm the password in the confirmation field
  And I click the Register button
  Then an error message should be displayed indicating the password field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              |
    | krishna@gmail.com  |
@missing_confirmation_password
Scenario Outline: User Registration Process with Empty Confirmation Password
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user leaves the confirmation password field empty
  And the user clicks the Register button
  Then an error message should appear indicating the confirmation password field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password            |
    | krishna@gmail.com  | ValidPassword123    |
@duplicate_email_registration
Scenario Outline: User Registration Process with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed indicating the email is already in use
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password            | confirmation        |
    | krishna@gmail.com   | ValidPassword123    | ValidPassword123     |
@invalid-password
Scenario Outline: User Registration Process with Short Password
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the password does not meet the minimum length requirement
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password | confirmation |
    | krishna@gmail.com   | short    | short        |
@valid-email-subdomain
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user should log in using the newly created account

  Examples:
    | email                     | password             | confirmation        |
    | user@mail.example.com     | ValidPassword123     | ValidPassword123     |
@special-character-email
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message appears
  And a confirmation email is received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email             | password            |
    | "!@example.com"   | "ValidPassword123"  |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                | password            | confirmation        |
    | krishna@gmail.co     | ValidPassword123    | ValidPassword123     |
@invalid-email
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When I enter an email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then the user should see an error message indicating multiple "@" symbols are not allowed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password             | confirmation        |
    | abc@@example.com   | ValidPassword123!    | ValidPassword123!    |
@password_mismatch
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then an error message should be displayed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password             | confirmation_password   |
    | krishna@gmail.com  | ValidPassword123     | DifferentPassword456    |
@invalid-email-domain
Scenario Outline: User Registration Process with Invalid Email Domain
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And I click the "Register" button
  Then an error message should be displayed indicating the domain is invalid
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email     | password              | confirmation          |
    | abc@      | ValidPassword123      | ValidPassword123      |
@max_length_password_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter the maximum length password "<password>" in the password field
  And I confirm the password "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message is displayed
  And a confirmation email is received in the inbox
  When I log in using the newly created account with "<email>" and "<password>"
  Then the user is successfully logged in to the platform

  Examples:
    | email             | password                       | confirmation                   |
    | krishna@gmail.com | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
@max_length_email_registration
Scenario Outline: User Registration Process with Maximum Length Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password with "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                       | password                | confirmation           |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | ValidPassword123! | ValidPassword123! |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email                   | password            | confirmation_password   |
    | user!name@domain.com   | ValidPassword123!   | ValidPassword123!       |
@invalid-email-registration
Scenario Outline: User Registration with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then an error message indicating invalid characters in the email should appear
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email    | password               | confirmation          |
    | abc@     | ValidPassword123!      | ValidPassword123!      |
@empty_email_registration
Scenario Outline: User Registration Process with Empty Email Field
  Given the user is on the Registration Page
  When the user leaves the email field empty
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the Register button
  Then an error message should appear indicating the email field is required
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | password             |
    | ValidPassword123     |
@max_length_password_registration
Scenario Outline: User Registration Process with Maximum Length Password
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the Register button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in with the new account
  
  Examples:
    | email              | password                   | confirmation               |
    | krishna@gmail.com  | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
    | krishna@gmail.com  | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
@max-special-characters
Scenario Outline: User Registration Process with Maximum Special Characters
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password "<confirmation_password>"
  And the user clicks the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                             | password              | confirmation_password   |
    | a!@#$%^&*()_+[]{}|;':,.<>?~      | ValidPassword123!     | ValidPassword123!       |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email in the inbox
  And the user logs in using the account with "<email>"

  Examples:
    | email              | password              | confirmation         |
    | user!@example.com  | ValidPassword123      | ValidPassword123      |
@concurrent_registration
Scenario Outline: User Registration Process
  Given the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  When the user clicks the "Register" button in two different browsers simultaneously
  Then the user should see the success or error message on both screens
  And the system should ensure only one account is created in the database
  And the user logs in using the newly created account

  Examples:
    | email            | password            | confirmation        |
    | krishna@gmail.com| ValidPassword123    | ValidPassword123     |
@invalid-email-space
Scenario Outline: User Registration Process with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the Register button
  Then an error message should be displayed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email            | password             | confirmation       |
    | abc @gmail.com   | ValidPassword123     | ValidPassword123    |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a password that does not meet complexity requirements "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then an error message should be displayed indicating the password does not meet complexity requirements
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | 12345    | 12345        |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the new account

  Examples:
    | email                     | password              | confirmation         |
    | user.name@example.com     | SecurePassword123     | SecurePassword123     |
@password_mismatch
Scenario Outline: User Registration Process
  Given the user is on the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should display "Passwords do not match"

  Examples:
    | email                   | password        | confirmPassword         |
    | test_user@example.com   | Password123!    | DifferentPassword456!   |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should be redirected to the confirmation page with URL containing "/confirmation"

  Examples:
    | email                   | password             | confirmPassword         |
    | test_user@example.com   | SecurePass123!      | SecurePass123!          |
    | invalid-email           | ValidPass123!       | ValidPass123!           |
    |                        | ValidPass123!       | ValidPass123!           |
    | test_user@example.com   |                      |                         |
    | test_user@example.com   | short                | short                   |
    | test_user@example.com   | SecurePass123!      | DifferentPass456!       |
@short_password_error
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text equals "Password must be at least 8 characters"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   | short    | short           |
@invalid-email-format
Scenario Outline: User Registration Process with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then I should see the error message "Please enter a valid email address"

  Examples:
    | email          | password           | confirmPassword     |
    | invalid-email  | ValidPass123!     | ValidPass123!       |
@error-message-empty-email
Scenario Outline: User Registration Process with Empty Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message element should be displayed
  And the error message text should equal "Email is required"

  Examples:
    | email | password        | confirmPassword  |
    |       | Password123!    | Password123!     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                       | password                  | confirmPassword           |
    | unique_user@example.com     | AnotherSecurePass123!     | AnotherSecurePass123!     |
@duplicate-email
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then I should see the error message with text "Email already exists"

  Examples:
    | email                      | password          | confirmPassword      |
    | existing_user@example.com  | ValidPass123!     | ValidPass123!       |
@error-message
Scenario Outline: User Registration Process with Empty Email
  Given the user navigates to the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message element should display an error message

  Examples:
    | email | password        | confirmPassword   |
    |       | Password123!   | Password123!      |
@invalid-password
Scenario Outline: User Registration with Password Lacking Numbers
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text should equal "Password must contain at least one number"

  Examples:
    | email                    | password            | confirmPassword       |
    | test_user@example.com    | NoNumbersHere!      | NoNumbersHere!        |
@invalid-email
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see an error message saying "Please enter a valid email address"

  Examples:
    | email         | password          | confirmPassword   |
    | invalid-email | ValidPass123!     | ValidPass123!     |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message text equals "Password must contain at least one special character"

  Examples:
    | email                   | password           | confirmPassword       |
    | test_user@example.com   | NoSpecialChar123   | NoSpecialChar123      |
@invalid-password
Scenario Outline: User Registration with Password Lacking Special Character
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message should display "<errorMessage>"

  Examples:
    | email                     | password               | confirmPassword         | errorMessage                                     |
    | test_user@example.com     | NoSpecialChar123       | NoSpecialChar123         | Password must contain at least one special character |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be redirected to the confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                   | password           | confirmPassword      |
    | valid_user@example.com  | ValidPass456!      | ValidPass456!        |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message "Password must contain at least one number"

  Examples:
    | email                     | password           | confirmPassword      |
    | test_user@example.com     | NoNumbersHere!     | NoNumbersHere!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                   | password          | confirmPassword     |
    | Test_User@example.com   | SecurePass123!    | SecurePass123!      |
@valid-registration
Scenario Outline: User Registration Process
  When I navigate to the registration URL "https://app.example.com/register"
  And I enter email "<email>" in the email field
  And I enter password "<password>" in the password field
  And I enter password "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed
  And the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password

  Examples:
    | email                       | password           | confirmPassword      |
    | test_user+tag@example.com   | SecurePass123!     | SecurePass123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the confirmation message

  Examples:
    | email                  | password          | confirmPassword     |
    | test.user@example.com  | SecurePass123!    | SecurePass123!      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be directed to the confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                   | password            | confirmPassword      |
    | test-user@example.com   | SecurePass123!     | SecurePass123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button should be clicked and no errors should occur
  And the confirmation message should be displayed

  Examples:
    | email                     | password          | confirmPassword    |
    | test123_user@example.com  | SecurePass123!    | SecurePass123!     |
@invalid-password
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should contain "<password>"
  And the confirm password field should contain "<confirmPassword>"
  And the error message text should equal "Password must be at least 8 characters"

  Examples:
    | email                    | password | confirmPassword |
    | test_user@example.com    | short    | short           |
@empty_password_registration
Scenario Outline: User Registration Process with Empty Password
  Given the user navigates to the registration URL
  When I enter the email "<email>"
  And I enter the password "<password>"
  And I enter the confirm password "<confirmPassword>"
  And I click the Register button
  Then the user should see the error message "Password is required"

  Examples:
    | email                  | password | confirmPassword |
    | test_user@example.com  |          |                 |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should be redirected to the confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                  | password   | confirmPassword |
    | test_user@example.com  | P@ssw0rd   | P@ssw0rd        |
@maximum_length_email
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be redirected to a confirmation page
  And the user should see the confirmation message

  Examples:
    | email                                                      | password          | confirmPassword     |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123! |
@confirmation_email_sent
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button should be clicked and no errors should occur
  And the confirmation email should be logged as sent to "<email>"

  Examples:
    | email                   | password        | confirmPassword   |
    | test_email@example.com  | Password123!    | Password123!      |
@password-mismatch
Scenario Outline: User Registration Process
  Given the user navigates to the registration URL "https://app.example.com/register"
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message "Passwords do not match"

  Examples:
    | email                   | password         | confirmPassword            |
    | test_user@example.com   | Password123!     | DifferentPassword456!      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                    | password          | confirmPassword     |
    | test_user@example.com    | SecurePass123!    | SecurePass123!      |
word          | confirmPassword     |
    | existing_user@example.com      | ValidPass123!     | ValidPass123!       |
@missing-password
Scenario Outline: User Registration without Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should be displayed
  And the error message text should equal "Password is required"

  Examples:
    | email                  | password | confirmPassword |
    | test_user@example.com  |          |                 |
