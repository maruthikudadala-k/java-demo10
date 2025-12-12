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
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters a unique email address "<email>"
  And the user enters a password "<password>"
  And the user confirms the password "<confirmation_password>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the new credentials

  Examples:
    | email                      | password             | confirmation_password    |
    | uniqueuser@example.com     | validpassword123     | validpassword123         |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then the user should see a success message on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the new account

  Examples:
    | email               | password             | confirmation_password  |
    | krishna@gmail.com   | ValidPassword123     | ValidPassword123       |
@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                       | password             | confirmation        |
    | krishna_smith@gmail.com     | ValidPassword123     | ValidPassword123     |
@unique-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the new account

  Examples:
    | email               | password              | confirmation         |
    | krishna@gmail.com   | ValidPassword123!     | ValidPassword123!     |
@valid_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then a success message appears
  And a confirmation email is received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password              | confirmation         |
    | user.name@example.com     | SecurePassword123     | SecurePassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                    | password            | confirmation         |
    | krishna-hyphen@gmail.com | ValidPassword123    | ValidPassword123      |
@valid_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email              | password               | confirmation_password    |
    | krishna@gmail.com  | ValidPassword123!      | ValidPassword123!         |
@valid-lowercase-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using "<email>"

  Examples:
    | email                | password              | confirmation         |
    | krishna@gmail.com    | ValidPassword123      | ValidPassword123      |
@password_mismatch
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>"
  And the user enters "<password>"
  And the user enters "<confirmation_password>"
  And the user clicks the Register button
  Then an error message appears indicating password mismatch
  And the account is not created
  And the user remains on the registration page

  Examples:
    | email               | password             | confirmation_password     |
    | krishna@gmail.com   | ValidPassword123     | DifferentPassword456      |
@valid-email-registration
Scenario Outline: User Registration Process
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password as "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the account with "<email>"

  Examples:
    | email                      | password               | confirmation          |
    | user@longdomainname.com   | ValidPassword123!      | ValidPassword123!      |
@valid-email-subdomain
Scenario Outline: User Registration Process with Subdomain Email
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be logged in using the new account

  Examples:
    | email                    | password           | confirmation       |
    | user@mail.example.com    | ValidPassword123   | ValidPassword123    |
@valid-email-registration
Scenario Outline: Validate email with numeric domain during registration
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I should receive a confirmation email in the inbox
  And I should log in using "<email>" and "<password>"

  Examples:
    | email                  | password            | confirmation        |
    | user123@123domain.com | SecurePassword123   | SecurePassword123    |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using "<email>" and "<password>"

  Examples:
    | email              | password  | confirmation |
    | a@example.com      | Pass123   | Pass123      |
    | b@domain.com       | Admin321  | Admin321     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email             | password            | confirmation_password  |
    | user@example      | ValidPassword123    | ValidPassword123        |
@valid-registration-long-username
Scenario Outline: User Registration Process with Long Username
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the email "<email>"

  Examples:
    | email                     | password              | confirmation_password    |
    | longusername@example.com  | ValidPassword123!     | ValidPassword123!        |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And the user clicks the Register button
  Then a success message should be displayed
  And the user should receive a confirmation email in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                | password           | confirmation        |
    | user123@gmail.com   | ValidPassword123   | ValidPassword123     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password              |
    | krishna@gmail.com   | StrongPassword123!    |
@valid-registration-special-characters
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using "<email>"

  Examples:
    | email                     | password             | confirmation_password |
    | user!name@gmail.com      | ValidPassword123     | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process with Consecutive Special Characters
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear indicating account creation
  And a confirmation email should be received in the inbox
  And the user should be successfully logged in using the newly created account

  Examples:
    | email                   | password              | confirmation          |
    | user..name@gmail.com   | ValidPassword123!     | ValidPassword123!      |
@trim_email_spaces
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                   | password              | confirmation_password    |
    | " krishna@gmail.com "   | validPassword123      | validPassword123         |
@valid-email_short_username
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user can log in using the newly created account

  Examples:
    | email         | password            | confirmation_password |
    | a@b.com      | ValidPassword123    | ValidPassword123      |
@mixed_case_email
Scenario Outline: User Registration Process with Mixed Case Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in with "<email>"

  Examples:
    | email                   | password               | confirmation_password    |
    | KrIsHnA@gmail.com      | ValidPassword123!      | ValidPassword123!        |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password           | confirmation_password  |
    | user123@gmail.com  | ValidPassword123   | ValidPassword123       |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using "<email>"

  Examples:
    | email                | password              | confirmation          |
    | user!@example.com   | ValidPassword123      | ValidPassword123       |
@valid-short-domain-email
Scenario Outline: Validate Short Domain Email During Registration
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the account

  Examples:
    | email        | password           | confirmation        |
    | user@a.com  | ValidPassword123   | ValidPassword123     |
@empty-email
Scenario Outline: Verify system prevents registration with empty email field
  Given the user is on the Registration Page
  When the user leaves the email field empty
  And the user enters "<password>" in the password field
  And the user confirms the password with "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating the email field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | password             | confirmation        |
    | ValidPassword123     | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                    | password              | confirmation          |
    | user!name@domain.com    | ValidPassword123!     | ValidPassword123!     |
@valid-registration-plus-sign
Scenario Outline: User Registration Process with Email Plus Sign
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message is displayed indicating account creation
  And a confirmation email is received in the inbox
  And the user logs in using the account with "<email>"

  Examples:
    | email                   | password            | confirmation        |
    | krishna+test@gmail.com  | ValidPassword123    | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process with Email Having Special Characters
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email           | password             | confirmation        |
    | !@example.com   | ValidPassword123     | ValidPassword123     |
@valid-uppercase-email
Scenario Outline: Validate that the system accepts an email address in uppercase during registration
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be successfully logged in

  Examples:
    | email               | password            | confirmation        |
    | KRISHNA@GMAIL.COM  | ValidPassword123    | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                | password            | confirmation        |
    | krishna@gmail.co     | ValidPassword123    | ValidPassword123     |
@invalid-email
Scenario Outline: User Registration with Invalid Email Address
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then an error message should appear indicating invalid characters in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email   | password              | confirmation         |
    | abc@    | ValidPassword123!     | ValidPassword123!     |
@password_mismatch
Scenario Outline: User Registration Process 
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | email             | password              | confirmation_password      |
    | krishna@gmail.com | ValidPassword123      | DifferentPassword456       |
@empty_password
Scenario Outline: User Registration Process with Empty Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I leave the password field empty
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the password field is required
  And the account is not created
  And the user remains on the registration page

  Examples:
    | email             | confirmation_password |
    | krishna@gmail.com |                     |
@invalid-email
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then an error message should appear indicating multiple "@" symbols are not allowed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email             | password              | confirmation          |
    | abc@@example.com  | ValidPassword123!     | ValidPassword123!      |
@invalid-email-domain
Scenario Outline: User Registration with Invalid Email Domain
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed indicating the domain is invalid
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email    | password            | confirmation        |
    | abc@     | ValidPassword123    | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And the user clicks the Register button
  Then a success message appears indicating account creation
  And the user receives a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                    | password              | confirmation_password   |
    | user+test@gmail.com     | ValidPassword123!     | ValidPassword123!       |
@invalid-password-complexity
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the Register button
  Then an error message should be displayed indicating the password does not meet complexity requirements
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password | confirmation |
    | krishna@gmail.com   | 12345    | 12345        |
@max_length_email_registration
Scenario Outline: User Registration with Maximum Length Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And the user clicks the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                      | password               | confirmation         |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | ValidPassword123! | ValidPassword123! |
@max_length_registration
Scenario Outline: User Registration with Maximum Length Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email               | password                      | confirmation_password             |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
@max_special_characters
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message is displayed
  And a confirmation email is received in the inbox
  And the user logs in using the new account

  Examples:
    | email                             | password                | confirmation_password     |
    | a!@#$%^&*()_+[]{}|;':,.<>?~      | ValidPassword123!      | ValidPassword123!         |
@invalid-email-registration
Scenario Outline: User Registration Process with Spaces in Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then an error message should appear indicating spaces are not allowed in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email           | password            | confirmation        |
    | abc @gmail.com  | ValidPassword123    | ValidPassword123     |
@valid-registration-max-password-length
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And the user clicks the Register button
  Then a success message is displayed indicating account creation
  And a confirmation email is received in the inbox
  When the user logs in using the newly created account
  Then the user is successfully logged in to the platform

  Examples:
    | email               | password                          |
    | krishna@gmail.com   | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa |
@empty_confirmation_password
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I leave the confirmation password field empty
  And I click the "Register" button
  Then an error message should appear indicating the confirmation password field is required
  And the account should not be created
  And the user should remain on the registration page

  Examples:
    | email              | password            |
    | krishna@gmail.com  | ValidPassword123    |
@existing-email-registration
Scenario Outline: User Registration Process with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the "Register" button
  Then an error message should appear indicating the email is already in use
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password              | confirmation         |
    | krishna@gmail.com  | ValidPassword123      | ValidPassword123      |
@invalid-password-length
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the password does not meet the minimum length requirement
  And the account is not created
  And the user remains on the Registration Page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | short    | short        |
@invalid-email-format
Scenario Outline: User Registration with Improperly Formatted Email Address
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating invalid email format
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email    | password            | confirmation        |
    | abc@     | ValidPassword123    | ValidPassword123     |
@concurrent_registration
Scenario Outline: User Registration Process
  Given the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  When the user clicks the "Register" button in two different browsers simultaneously
  Then one success message should appear
  And one error message should appear
  And only one account should be created in the database
  And the user logs in using the newly created account

  Examples:
    | email              | password          | confirmation      |
    | krishna@gmail.com  | ValidPassword123  | ValidPassword123   |
@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                  | password            | confirmation        |
    | krishna@gmail.com     | ValidPassword123    | ValidPassword123     |
@invalid-email-registration
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should display "Please enter a valid email address"

  Examples:
    | email          | password          | confirmPassword    |
    | invalid-email  | ValidPass123!     | ValidPass123!      |
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
  And the Register button is clicked and no errors occur
  Then the confirmation message should be displayed

  Examples:
    | email                     | password                  | confirmPassword            |
    | unique_user@example.com   | AnotherSecurePass123!     | AnotherSecurePass123!      |
@invalid-email
Scenario Outline: User Registration with Improperly Formatted Email
  Given the user is on the Registration Page
  When the user enters "<email>" in email field
  And the user enters "<password>" in password field
  And the user enters "<confirmPassword>" in confirm password field
  And the user clicks the Register button
  Then the error message element should be displayed
  And the error message text should equal "Please enter a valid email address"

  Examples:
    | email          | password         | confirmPassword   |
    | invalid-email  | ValidPass123!    | ValidPass123!     |
@missing-password
Scenario Outline: User Registration Process without Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message element
  And the error message text should equal "Password is required"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   |          |                  |
@valid-registration
Scenario Outline: User Registration Process
  Given the user navigates to the registration URL
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should contain "/confirmation" 
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                     | password               | confirmPassword          |
    | test_user@example.com     | SecurePass123!        | SecurePass123!           |
    | invalid-email             | ValidPass123!         | ValidPass123!            |
    |                          | ValidPass123!         | ValidPass123!            |
    | test_user@example.com     |                       |                          |
    | test_user@example.com     | short                  | short                    |
    | test_user@example.com     | SecurePass123!        | DifferentPass456!        |
@valid-registration
Scenario Outline: User Registration Process
  When I navigate to registration URL "https://app.example.com/register"
  And I enter email "<email>" in email field
  And I enter password "<password>" in password field
  And I enter password "<confirmPassword>" in confirm password field
  And I click Register button
  Then I should see the confirmation message

  Examples:
    | email                    | password          | confirmPassword     |
    | valid_user@example.com   | ValidPass456!     | ValidPass456!       |
@duplicate-email-registration
Scenario Outline: User Registration Process with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should be displayed
  And the error message text should equal "Email already exists"

  Examples:
    | email                          | password         | confirmPassword    |
    | existing_user@example.com      | ValidPass123!    | ValidPass123!      |
@missing-password
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message "Password is required"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   |          |                 |
@mismatched_passwords
Scenario Outline: User Registration Process
  Given the user navigates to the registration URL "https://app.example.com/register"
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should contain "<password>"
  And the confirm password field should contain "<confirmPassword>"
  And the Register button is clicked
  Then the error message text should equal "Passwords do not match"

  Examples:
    | email                   | password       | confirmPassword          |
    | test_user@example.com   | Password123!   | DifferentPassword456!    |
@invalid-password
Scenario Outline: User Registration Process with Short Password
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message "Password must be at least 8 characters"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   | short    | short           |
@empty_email_registration
Scenario Outline: User Registration without Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message should be displayed
  And the error message text should be "Email is required"

  Examples:
    | email | password         | confirmPassword   |
    |       | Password123!     | Password123!      |
!          |
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
  And the Register button should be clicked with no errors
  And the confirmation email should be logged as sent to "<email>"

  Examples:
    | email                     | password        | confirmPassword   |
    | test_email@example.com    | Password123!    | Password123!      |
@invalid-password
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message "Password must contain at least one special character"

  Examples:
    | email                   | password             | confirmPassword       |
    | test_user@example.com   | NoSpecialChar123     | NoSpecialChar123      |
@empty-email
Scenario Outline: User Registration without Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message should be displayed
  And the error message text should equal "Email is required"

  Examples:
    | email | password         | confirmPassword    |
    |       | Password123!     | Password123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the confirmation message should be displayed
  And the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password

  Examples:
    | email                       | password           | confirmPassword      |
    | test_user+tag@example.com  | SecurePass123!     | SecurePass123!       |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text equals "Password must contain at least one number"

  Examples:
    | email                   | password            | confirmPassword       |
    | test_user@example.com   | NoNumbersHere!      | NoNumbersHere!        |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should be directed to the Confirmation Page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                    | password           | confirmPassword      |
    | test-user@example.com    | SecurePass123!     | SecurePass123!       |
@valid_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I navigate to the registration URL "https://app.example.com/register"
  And I enter email "<email>" in the email field
  And I enter password "<password>" in the password field
  And I enter password "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then I should see the confirmation message

  Examples:
    | email                      | password          | confirmPassword    |
    | test_user@example.com     | SecurePass123!    | SecurePass123!     |
@maximum_length_email
Scenario Outline: User Registration Process with Maximum Length Email
  Given the user navigates to the registration URL "https://app.example.com/register"
  When the user enters email "<email>" in the email field
  And the user enters password "<password>" in the password field
  And the user enters password "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain the maximum length email
  And the password field should not be empty
  And the confirm password field should match password
  And the Register button should be clicked and no errors occur
  And the confirmation message should be displayed

  Examples:
    | email                                                               | password           | confirmPassword     |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123! |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                     | password         | confirmPassword    |
    | test.user@example.com     | SecurePass123!   | SecurePass123!     |
@password-mismatch
Scenario Outline: User Registration Process with Mismatched Passwords
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should be displayed with text "Passwords do not match"

  Examples:
    | email                   | password       | confirmPassword        |
    | test_user@example.com   | Password123!   | DifferentPassword456!   |
@valid-registration
Scenario Outline: User Registration Process
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
    | email                     | password           | confirmPassword     |
    | Test_User@example.com    | SecurePass123!     | SecurePass123!      |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message "Password must contain at least one special character"

  Examples:
    | email                     | password            | confirmPassword       |
    | test_user@example.com     | NoSpecialChar123    | NoSpecialChar123      |
@successful-registration
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
  And the Register button should be clicked and no errors should occur
  And the confirmation message should be displayed

  Examples:
    | email                    | password   | confirmPassword |
    | test_user@example.com    | P@ssw0rd   | P@ssw0rd        |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                     | password           | confirmPassword      |
    | test123_user@example.com  | SecurePass123!     | SecurePass123!       |
@short-password
Scenario Outline: User Registration Process with Short Password
  Given the user is on the registration URL "https://app.example.com/register"
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should display "Password must be at least 8 characters"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   | short    | short           |
@duplicate-email
Scenario Outline: User Registration Process with Existing Email
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message element
  And the error message text should be "Email already exists"

  Examples:
    | email                         | password          | confirmPassword     |
    | existing_user@example.com     | ValidPass123!     | ValidPass123!      |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password as "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  When I log in using "<email>" and "<password>"
  Then the user should be successfully logged in to the platform

  Examples:
    | email               | password            | confirmation        |
    | krishna@gmail.com   | ValidPassword123    | ValidPassword123     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>"
  And the user enters "<password>"
  And the user confirms the password "<confirmation_password>"
  And the user clicks the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using "<email>"

  Examples:
    | email               | password              | confirmation_password   |
    | krishna@gmail.com   | ValidPassword123!     | ValidPassword123!       |
@valid-email-uppercase
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation>"
  And the user clicks the Register button
  Then a success message should be displayed
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password            | confirmation        |
    | KRISHNA@GMAIL.COM  | ValidPassword123    | ValidPassword123     |
@password_mismatch
Scenario Outline: User Registration with Mismatched Passwords
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email              | password            | confirmation         |
    | krishna@gmail.com  | ValidPassword123    | DifferentPassword456  |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user confirms the password in the confirmation field
  And the user clicks the "Register" button
  Then the user should see a success message on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                   | password            |
    | uniqueuser@example.com  | validpassword123   |
@valid-email-plus-sign
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                     | password             | confirmation        |
    | krishna+test@gmail.com   | ValidPassword123     | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                   | password             | confirmation_password   |
    | krishna@gmail.com      | ValidPassword123     | ValidPassword123        |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email Containing Numbers
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user can log in using the new account with email "<email>" and password "<password>"

  Examples:
    | email                | password            | confirmation          |
    | user123@gmail.com   | ValidPassword123    | ValidPassword123       |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email               | password            | confirmation_password  |
    | krishna@gmail.com   | StrongPassword123!  | StrongPassword123!      |
@valid-email-hyphen-registration
Scenario Outline: User Registration Process with Valid Email Address Containing Hyphens
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the registered account

  Examples:
    | email                      | password            | confirmation        |
    | krishna-hyphen@gmail.com   | ValidPassword123    | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration with Valid Email Containing Dots
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear on the screen
  And the user should receive a confirmation email in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                   | password             | confirmation         |
    | user.name@example.com   | SecurePassword123    | SecurePassword123     |
@lowercase_email_registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password with "<confirmation>"
  And I click the "Register" button
  Then the user should see a success message
  And the user should receive a confirmation email
  And I log in using the newly created account

  Examples:
    | email                | password              | confirmation        |
    | krishna@gmail.com    | ValidPassword123      | ValidPassword123     |
@valid_email_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password             | confirmation         |
    | krishna_smith@gmail.com   | ValidPassword123     | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email            | password  | confirmation |
    | a@example.com    | Pass123   | Pass123      |
    | b@test.com       | Admin321  | Admin321     |
@long_username_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                     | password              | confirmation          |
    | longusername@example.com  | ValidPassword123!     | ValidPassword123!      |
@valid-email-registration
Scenario Outline: Validate Long Domain Name Email Registration
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the new account

  Examples:
    | email                     | password               | confirmation         |
    | user@longdomainname.com   | ValidPassword123!      | ValidPassword123!     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the "<confirmation>"
  And the user clicks the Register button
  Then the user should see a success message
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                   | password            | confirmation         |
    | user@mail.example.com   | ValidPassword123    | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be logged in using the newly created account

  Examples:
    | email                   | password            | confirmation        |
    | user123@123domain.com  | SecurePassword123   | SecurePassword123    |
@valid_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation>"
  And the user clicks the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account
  
  Examples:
    | email        | password            | confirmation        |
    | user@a.com  | ValidPassword123    | ValidPassword123     |
@valid-registration
Scenario Outline: User Registration Process
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                   | password               | confirmation_password     |
    | user+test@gmail.com    | ValidPassword123!      | ValidPassword123!          |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received
  And the user should be able to log in with the new account

  Examples:
    | email                | password             | confirmation         |
    | user!name@gmail.com  | ValidPassword123     | ValidPassword123      |
@valid-email-registration
Scenario Outline: User Registration Process with Consecutive Special Characters
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then I should see a success message
  And I verify a confirmation email is received
  And I log in using the account with "<email>" and "<password>"

  Examples:
    | email                   | password              | confirmation          |
    | user..name@gmail.com   | ValidPassword123!     | ValidPassword123!      |
@valid-email-registration
Scenario Outline: User Registration Process with Valid Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be logged in with the account

  Examples:
    | email                | password             | confirmation           |
    | user123@gmail.com   | ValidPassword123     | ValidPassword123       |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear indicating account creation
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                   | password              | confirmation          |
    | user!name@domain.com   | ValidPassword123!     | ValidPassword123!      |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user should be able to log in with "<email>" and "<password>"

  Examples:
    | email                  | password            | confirmation_password  |
    | " krishna@gmail.com "  | "validPassword123"  | "validPassword123"     |
@valid-registration-mixed-case-email
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password with "<confirmation>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in with "<email>" and "<password>"

  Examples:
    | email                    | password                | confirmation          |
    | KrIsHnA@gmail.com       | ValidPassword123!       | ValidPassword123!      |
@valid-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email            | password             | confirmation        |
    | !@example.com    | ValidPassword123     | ValidPassword123     |
@valid-email-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear indicating account creation
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                | password            | confirmation        |
    | krishna@gmail.co     | ValidPassword123    | ValidPassword123     |
@empty_confirmation_password
Scenario Outline: User Registration Process with Empty Confirmation Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I leave the confirmation password field empty
  And the user clicks the "Register" button
  Then an error message appears indicating the confirmation password field is required
  And the account is not created
  And the user remains on the Registration Page

  Examples:
    | email               | password            |
    | krishna@gmail.com   | ValidPassword123    |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And the user should receive a confirmation email
  And the user logs in using the newly created account

  Examples:
    | email                | password             | confirmation_password   |
    | krishna@gmail.com    | ValidPassword123!    | ValidPassword123!        |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating the password does not meet complexity requirements
  And the account is not created
  And the user remains on the Registration Page

  Examples:
    | email              | password | confirmation |
    | krishna@gmail.com  | 12345    | 12345        |
@valid-registration
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email      | password           | confirmation       |
    | a@b.com   | ValidPassword123   | ValidPassword123    |
@empty-email-error
Scenario Outline: Verify system prevents registration with empty email field
  Given the user is on the Registration Page
  When I leave the email field empty
  And I enter "<password>" in the password field
  And I confirm the password with "<confirmation>"
  And I click the "Register" button
  Then an error message should appear indicating the email field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | password            | confirmation        |
    | ValidPassword123    | ValidPassword123     |
@valid-generic-domain-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I enter a valid password "<password>"
  And I confirm the password "<confirmation_password>"
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email           | password            | confirmation_password |
    | user@example    | ValidPassword123    | ValidPassword123       |
@existing-email-error
Scenario Outline: User Registration with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm "<confirmation>"
  And the user clicks the Register button
  Then an error message should appear indicating the email is already in use
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password            | confirmation       |
    | krishna@gmail.com   | ValidPassword123    | ValidPassword123    |
@invalid-email
Scenario Outline: User Registration with Improperly Formatted Email Address
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the Register button
  Then an error message should be displayed indicating invalid email format
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email     | password             | confirmation         |
    | abc@      | ValidPassword123     | ValidPassword123      |
@valid-registration-special-characters
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the "Register" button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user logs in using the newly created account

  Examples:
    | email                      | password               | confirmation            |
    | a!@#$%^&*()_+[]{}|;':,.<>?~ | ValidPassword123!     | ValidPassword123!      |
@password_mismatch
Scenario Outline: User Registration Process with Password Mismatch
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation_password>"
  And the user clicks the Register button
  Then an error message should be displayed indicating password mismatch
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email               | password             | confirmation_password    |
    | krishna@gmail.com   | ValidPassword123     | DifferentPassword456     |
@invalid-email-space
Scenario Outline: User Registration Process with Email Containing Spaces
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then an error message should appear
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email            | password              | confirmation          |
    | abc @gmail.com   | ValidPassword123      | ValidPassword123       |
@empty-password
Scenario Outline: User Registration Process with Empty Password
  Given the user is on the Registration Page
  When I enter a valid email address "<email>"
  And I leave the password field empty
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then an error message should appear indicating the password field is required
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email             |
    | krishna@gmail.com |
@invalid-email-registration
Scenario Outline: User Registration with Invalid Email Format
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password "<confirmation>"
  And I click the Register button
  Then an error message should appear indicating multiple "@" symbols are not allowed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email             | password              | confirmation         |
    | abc@@example.com  | ValidPassword123!     | ValidPassword123!     |
@maximum-length-password-registration
Scenario Outline: User Registration Process with Maximum Length Password
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I confirm the password in the confirmation field
  And I click the "Register" button
  Then a success message should appear on the screen
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email               | password      |
    | krishna@gmail.com   | aaaaaaaaaaaa... [1000 times] |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation_password>" in the confirmation field
  And I click the "Register" button
  Then a success message should appear
  And a confirmation email should be received in the inbox
  And I log in using the newly created account

  Examples:
    | email                | password                          | confirmation_password                |
    | krishna@gmail.com    | <a repeated 1000 times>         | <a repeated 1000 times>             |
@invalid-email
Scenario Outline: User Registration with Invalid Email Address
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And the user clicks the "Register" button
  Then an error message should appear indicating invalid characters in the email
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email   | password             | confirmation        |
    | abc@    | ValidPassword123!    | ValidPassword123!    |
@registration_with_special_characters
Scenario Outline: User Registration Process
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmation>" in the confirmation field
  And I click the "Register" button
  Then a success message should be displayed
  And the user should receive a confirmation email in the inbox
  And the user logs in using the newly created account

  Examples:
    | email               | password             | confirmation       |
    | user!@example.com   | ValidPassword123     | ValidPassword123    |
@concurrent_registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password in the confirmation field
  And I click the "Register" button in Browser 1
  And I click the "Register" button in Browser 2
  Then I should see a success message in Browser 1
  And I should see an error message in Browser 2
  And only one account should be created in the database
  And I log in using the newly created account

  Examples:
    | email             | password            | confirmation         |
    | krishna@gmail.com | ValidPassword123    | ValidPassword123      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I confirm the password with "<confirmation>"
  And the user clicks the Register button
  Then a success message should be displayed
  And a confirmation email should be received in the inbox
  And the user should be able to log in using the newly created account

  Examples:
    | email                             | password              | confirmation         |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa | ValidPassword123! | ValidPassword123! |
@invalid-email-domain
Scenario Outline: User Registration with Invalid Email Domain
  Given the user is on the Registration Page
  When I enter "<email>"
  And I enter "<password>"
  And I enter "<confirmation>"
  And I click the "Register" button
  Then an error message should be displayed
  And the account should not be created
  And the user should remain on the Registration Page

  Examples:
    | email     | password            | confirmation        |
    | abc@      | ValidPassword123    | ValidPassword123     |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Email already exists"

    Examples:
      | email                      | password          | confirmPassword     |
      | existing_user@example.com  | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    And I wait for error message to appear (id="emailError")
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Please enter a valid email address"

    Examples:
      | email          | password            | confirmPassword      |
      | invalid-email  | ValidPass123!      | ValidPass123!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must contain at least one special character"

    Examples:
      | email                     | password             | confirmPassword        |
      | test_user@example.com     | NoSpecialChar123     | NoSpecialChar123       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must be at least 8 characters"

    Examples:
      | email                     | password | confirmPassword |
      | test_user@example.com     | short    | short           |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field id="email"
    And I enter password "<password>" in password field id="password"
    And I enter password "<confirmPassword>" in confirm password field id="confirmPassword"
    And I click Register button id="registerBtn"
    Then I wait for confirmation message to appear id="confirmationMsg"
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>" using getAttribute("value")
    And I assert password field is not empty using getAttribute("value")
    And I assert confirm password field matches password using getAttribute("value")
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed using isDisplayed()

    Examples:
      | email                      | password                   | confirmPassword            |
      | unique_user@example.com    | AnotherSecurePass123!      | AnotherSecurePass123!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Passwords do not match"

    Examples:
      | email                    | password        | confirmPassword          |
      | test_user@example.com    | Password123!    | DifferentPassword456!    |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "https://app.example.com/register"
    When the user enters email "<email>" in the email field with id "email"
    And the user enters password "<password>" in the password field with id "password"
    And the user enters password "<confirmPassword>" in the confirm password field with id "confirmPassword"
    And the user clicks the Register button with id "registerBtn"
    And the user waits for the error message to appear with id "emailError"
    Then the current URL should be "https://app.example.com/register"
    And the email field should be empty
    And the password field should not be empty
    And the Register button should be clicked
    And the error message element should be displayed
    And the error message text should equal "Email is required"

    Examples:
      | email | password         | confirmPassword   |
      |       | Password123!     | Password123!      |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registration_url>"
    And the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirm_password>" in confirm password field
    And the user clicks Register button
    Then the confirmation message should be displayed

    Examples:
      | registration_url             | email                    | password          | confirm_password    |
      | https://app.example.com/register | valid_user@example.com | ValidPass456!    | ValidPass456!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    Then I wait for the error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Passwords do not match"

    Examples:
      | email                     | password        | confirmPassword           |
      | test_user@example.com     | Password123!    | DifferentPassword456!     |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    And I assert confirmation message is displayed

    Examples:
      | email                     | password              | confirmPassword        |
      | test_user@example.com     | SecurePass123!       | SecurePass123!        |
      | invalid-email             | ValidPass123!        | ValidPass123!         |
      |                          | ValidPass123!        | ValidPass123!         |
      | test_user@example.com     |                       |                        |
      | test_user@example.com     | short                 | short                 |
      | test_user@example.com     | SecurePass123!       | DifferentPass456!     |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field (id="email")
    And the user enters password "<password>" in password field (id="password")
    And the user enters password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And the user clicks Register button (id="registerBtn")
    Then the confirmation message is displayed (id="confirmationMsg")

    Examples:
      | email                       | password          | confirmPassword     |
      | test_user+tag@example.com  | SecurePass123!    | SecurePass123!      |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "https://app.example.com/register"
    And the user enters email "<email>" in the email field with id "email"
    And the user enters password "<password>" in the password field with id "password"
    And the user enters password "<confirmPassword>" in the confirm password field with id "confirmPassword"
    And the user clicks the Register button with id "registerBtn"
    Then the confirmation message is displayed with id "confirmationMsg"

  Examples: 
    | email                                                               | password           | confirmPassword     |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123! |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the confirmation message should be displayed

    Examples:
      | email                    | password            | confirmPassword       |
      | Test_User@example.com    | SecurePass123!      | SecurePass123!        |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "https://app.example.com/register"
    And the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the confirmation message is displayed

    Examples:
      | email                     | password           | confirmPassword      |
      | test.user@example.com     | SecurePass123!     | SecurePass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    And I wait for confirmation message to appear
    Then I assert the current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    And I assert confirmation message is displayed

    Examples:
      | email                    | password   | confirmPassword |
      | test_user@example.com    | P@ssw0rd  | P@ssw0rd      |
  Scenario Outline: User Registration Process
    Given the user navigates to the registration URL
    When the user enters email "<email>" in the email field
    When the user enters password "<password>" in the password field
    When the user enters password "<confirmPassword>" in the confirm password field
    When the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    Then the email field should contain "<email>"
    Then the password field should be empty
    Then the Register button should be clicked
    Then the error message element should be displayed
    Then the error message text should equal "Password is required"

    Examples:
      | email                   | password | confirmPassword |
      | test_user@example.com   |          |                  |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field (id="email")
    And the user enters password "<password>" in password field (id="password")
    And the user enters password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And the user clicks Register button (id="registerBtn")
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    And the confirmation email is logged as sent to "<email>"

    Examples:
      | email                   | password        | confirmPassword   |
      | test_email@example.com  | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field 
    And I enter password "<password>" in password field 
    And I enter password "<confirmPassword>" in confirm password field 
    And I click Register button 
    Then I wait for confirmation message to appear 

    Examples:
      | email                     | password           | confirmPassword       |
      | test123_user@example.com  | SecurePass123!     | SecurePass123!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I wait for error message to appear (id="passwordError")
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must contain at least one number"

    Examples:
      | email                    | password            | confirmPassword      |
      | test_user@example.com    | NoNumbersHere!      | NoNumbersHere!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "<errorMessage>"

    Examples:
      | email                   | password | confirmPassword | errorMessage             |
      | test_user@example.com   |          |                  | Password is required      |
Scenario Outline: User Registration Process
  When I enter email "<email>" in email field
  And I enter password "<password>" in password field
  And I enter password "<confirmPassword>" in confirm password field
  And I click Register button
  Then I wait for confirmation message to appear

  Examples:
    | email                    | password          | confirmPassword     |
    | test_user@example.com    | SecurePass123!    | SecurePass123!      |
  Scenario Outline: User Registration Process
    Given the user navigates to the registration URL <registrationURL>
    When the user enters email <email> in the email field
    And the user enters password <password> in the password field
    And the user enters password <confirmPassword> in the confirm password field
    And the user clicks the Register button
    Then the user waits for the error message to appear
    And the user asserts the error message text equals "Please enter a valid email address"

  Examples:
    | registrationURL                     | email          | password          | confirmPassword     |
    | https://app.example.com/register    | invalid-email  | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    And I wait for the error message to appear
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field is empty
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Email is required"

    Examples:
      | email | password        | confirmPassword    |
      |       | Password123!    | Password123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    And I wait for error message to appear
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must contain at least one number"

    Examples:
      | email                   | password            | confirmPassword       |
      | test_user@example.com   | NoNumbersHere!      | NoNumbersHere!        |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should contain "<password>"
    And the confirm password field should contain "<confirmPassword>"
    And the Register button is clicked
    Then the error message text should equal "Password must be at least 8 characters"

    Examples:
      | email                     | password | confirmPassword |
      | test_user@example.com     | short    | short           |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the user waits for the confirmation message to appear

    Examples:
      | email                   | password            | confirmPassword      |
      | test-user@example.com   | SecurePass123!      | SecurePass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    And I wait for the error message to appear
    Then I assert the current URL is "https://app.example.com/register"
    And I assert the email field contains "<email>"
    And I assert the password field is not empty
    And I assert the Register button is clicked
    And I assert the error message element is displayed
    Then I assert the error message text equals "Email already exists"

    Examples:
      | email                        | password          | confirmPassword     |
      | existing_user@example.com    | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert error message text equals "Password must contain at least one special character"

    Examples:
      | email                     | password               | confirmPassword         |
      | test_user@example.com     | NoSpecialChar123      | NoSpecialChar123        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    Then I wait for the confirmation message to appear

    Examples:
      | email                    | password           | confirmPassword      |
      | valid_user@example.com   | ValidPass456!      | ValidPass456!        |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "https://app.example.com/register"
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should not be empty
    And the Register button should be clicked
    And the error message element should be displayed
    Then the error message text should equal "Email already exists"

    Examples:
      | email                        | password          | confirmPassword     |
      | existing_user@example.com    | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear

    Examples:
      | email           | password          | confirmPassword   |
      | invalid-email   | ValidPass123!     | ValidPass123!     |
  @UserRegistrationProcess
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the user waits for the error message to appear
    And the user asserts the current URL is the registration page
    And the user asserts the email field contains "<email>"
    And the user asserts the password field is not empty
    And the user asserts the Register button is clicked
    And the user asserts the error message element is displayed
    Then the user asserts the error message text equals "Please enter a valid email address"

  Examples:
    | email           | password           | confirmPassword     |
    | invalid-email   | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    Given the user navigates to the registration URL "https://app.example.com/register"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should be empty
    And the Register button should be clicked
    And the error message element should be displayed
    Then the error message text should equal "Password is required"

    Examples:
      | email                   | password | confirmPassword |
      | test_user@example.com   |          |                 |
  Scenario Outline: User Registration Process
    Given the user navigates to the registration URL "https://app.example.com/register"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the error message should be displayed
    And the error message text should be "Email is required"

    Examples:
      | email | password        | confirmPassword   |
      |       | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registrationUrl>"
    And enters email "<email>" in email field
    And enters password "<password>" in password field
    And enters password "<confirmPassword>" in confirm password field
    And clicks Register button
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    And the confirmation email is logged as sent to "<email>"

    Examples:
      | registrationUrl                  | email                       | password       | confirmPassword  |
      | https://app.example.com/register | test_email@example.com     | Password123!   | Password123!     |
  Scenario Outline: User Registration Process
    When I navigate to registration URL "<registrationUrl>"
    And I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I should see error message element displayed
    And the error message text should equal "<errorMessage>"

    Examples:
      | registrationUrl                 | email | password       | confirmPassword   | errorMessage          |
      | https://app.example.com/register |       | Password123!   | Password123!      | Email is required      |
  Scenario Outline: User Registration Process
    When the user navigates to the registration URL
    And enters email "<email>" in the email field
    And enters password "<password>" in the password field
    And enters password "<confirmPassword>" in the confirm password field
    And clicks the Register button
    Then the error message should appear
    And the error message text should equal "Email already exists"

    Examples:
      | email                      | password         | confirmPassword      |
      | existing_user@example.com  | ValidPass123!    | ValidPass123!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    And I assert confirmation message is displayed

    Examples:
      | email                     | password              | confirmPassword         |
      | test_user@example.com     | SecurePass123!       | SecurePass123!          |
      | invalid-email             | ValidPass123!        | ValidPass123!           |
      |                           | ValidPass123!        | ValidPass123!           |
      | test_user@example.com     |                       |                          |
      | test_user@example.com     | short                 | short                   |
      | test_user@example.com     | SecurePass123!       | DifferentPass456!       |
  Scenario Outline: User Registration Process
    Given user navigates to registration URL "<registration_url>"
    When user enters email "<email>" in email field
    And user enters password "<password>" in password field
    And user enters password "<confirm_password>" in confirm password field
    And user clicks Register button
    Then assert current URL is "<expected_url>"
    And assert email field contains "<email>" 
    And assert password field contains "<password>" 
    And assert confirm password field contains "<confirm_password>" 
    And assert Register button is clicked
    Then assert error message text equals "<error_message>"

    Examples:
      | registration_url                   | email                   | password          | confirm_password       | expected_url                   | error_message                   |
      | https://app.example.com/register   | test_user@example.com   | Password123!      | DifferentPassword456!  | https://app.example.com/register | Passwords do not match         |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I should assert current URL is "https://app.example.com/register"
    And I should assert email field contains "<email>"
    And I should assert password field contains "<password>"
    And I should assert confirm password field contains "<confirmPassword>"
    And I should assert Register button is clicked
    Then I should assert error message text equals "Passwords do not match"

    Examples:
      | email                   | password        | confirmPassword       |
      | test_user@example.com   | Password123!    | DifferentPassword456!  |
  @UserRegistrationProcess
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field (id="email")
    And I enter password "<password>" in the password field (id="password")
    And I enter password "<confirmPassword>" in the confirm password field (id="confirmPassword")
    And I click the Register button (id="registerBtn")
    Then I wait for the confirmation message to appear (id="confirmationMsg")

    Examples:
      | email                       | password           | confirmPassword      |
      | test_user+tag@example.com   | SecurePass123!    | SecurePass123!      |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    And the user waits for the confirmation message to appear
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    And the confirmation message is displayed

    Examples:
      | email                     | password           | confirmPassword       |
      | test.user@example.com     | SecurePass123!     | SecurePass123!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must contain at least one number"

    Examples:
      | email                     | password         | confirmPassword     |
      | test_user@example.com    | NoNumbersHere!   | NoNumbersHere!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    Then I wait for the error message to appear
    And I assert the current URL is "https://app.example.com/register"
    And I assert the email field contains "<email>"
    And I assert the password field contains "<password>"
    And I assert the confirm password field contains "<confirmPassword>"
    And I assert the Register button is clicked
    Then I assert the error message text equals "Password must contain at least one special character"

    Examples:
      | email                     | password              | confirmPassword          |
      | test_user@example.com     | NoSpecialChar123      | NoSpecialChar123         |
  Scenario Outline: User Registration Process
    Given the user navigates to the registration URL
    When the user enters email "<email>" into the email field
    And the user enters password "<password>" into the password field
    And the user enters password "<confirmPassword>" into the confirm password field
    And the user clicks the Register button
    Then the error message text equals "Password must contain at least one special character"

    Examples:
      | email                     | password              | confirmPassword        |
      | test_user@example.com     | NoSpecialChar123      | NoSpecialChar123       |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registrationUrl>"
    And enters email "<email>" in email field
    And enters password "<password>" in password field
    And enters password "<confirmPassword>" in confirm password field
    And clicks Register button
    Then the confirmation message is displayed

    Examples:
      | registrationUrl                  | email                       | password                    | confirmPassword            |
      | https://app.example.com/register | unique_user@example.com    | AnotherSecurePass123!      | AnotherSecurePass123!      |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the confirmation message is displayed

    Examples:
      | email                    | password           | confirmPassword      |
      | test_user@example.com    | SecurePass123!     | SecurePass123!       |
  Scenario Outline: User Registration Process
    When the user navigates to "<registration_url>"
    And the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the confirmation message is displayed

  Examples:
    | registration_url                | email                     | password           | confirmPassword      |
    | https://app.example.com/register | test-user@example.com    | SecurePass123!     | SecurePass123!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the confirmation message is displayed

    Examples:
      | email                     | password    | confirmPassword |
      | test_user@example.com     | P@ssw0rd    | P@ssw0rd        |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the confirmation message should be displayed

    Examples:
      | email                                                     | password           | confirmPassword     |
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123! |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<registrationUrl>"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL should be "<expectedUrl>"
    And the email field should contain "<email>"
    And the password field should contain "<password>"
    And the confirm password field should contain "<confirmPassword>"
    And the Register button is clicked
    Then the error message text should equal "<errorMessage>"

    Examples:
      | registrationUrl                   | email                     | password            | confirmPassword      | expectedUrl                   | errorMessage                                    |
      | https://app.example.com/register | test_user@example.com    | NoNumbersHere!      | NoNumbersHere!       | https://app.example.com/register | Password must contain at least one number      |
  @uniqueTag1
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must be at least 8 characters"

    Examples: 
      | email                     | password | confirmPassword |
      | test_user@example.com     | short    | short           |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear

    Examples:
      | email                   | password | confirmPassword |
      | test_user@example.com   |          |                 |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the confirmation message is displayed

    Examples:
      | email                     | password           | confirmPassword      |
      | test123_user@example.com  | SecurePass123!     | SecurePass123!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field 
    And the user enters password "<password>" in password field 
    And the user enters password "<confirmPassword>" in confirm password field 
    And the user clicks the Register button 
    Then the confirmation message is displayed 

    Examples:
      | email                    | password              | confirmPassword        |
      | Test_User@example.com    | SecurePass123!       | SecurePass123!         |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<registrationUrl>"
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the current URL is "<expectedUrl>"
    And the email field contains "<email>"
    And the password field contains "<password>"
    And the confirm password field contains "<confirmPassword>"
    And the Register button is clicked
    Then the error message text equals "<errorMessage>"

    Examples:
      | registrationUrl                  | email                   | password | confirmPassword | expectedUrl                    | errorMessage                                |
      | https://app.example.com/register | test_user@example.com   | short    | short           | https://app.example.com/register | Password must be at least 8 characters    |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I wait for error message to appear (id="passwordMismatchError")
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Passwords do not match"

    Examples:
      | email                   | password        | confirmPassword         |
      | test_user@example.com   | Password123!    | DifferentPassword456!   |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

    Examples:
      | email                     | password                     | confirmPassword            |
      | unique_user@example.com   | AnotherSecurePass123!       | AnotherSecurePass123!      |
  Scenario Outline: User Registration Process
    Given the user navigates to the registration URL
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the user should see the error message text equals "Password must contain at least one special character"

    Examples:
      | email                    | password              | confirmPassword         |
      | test_user@example.com    | NoSpecialChar123      | NoSpecialChar123        |
  Scenario Outline: User Registration Process
    Given the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    When the user clicks the Register button
    Then the error message element is displayed
    And the error message text equals "Email is required"

  Examples:
    | email | password        | confirmPassword   |
    |       | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registrationUrl>"
    And enters email "<email>" in email field
    And enters password "<password>" in password field
    And enters password "<confirmPassword>" in confirm password field
    And clicks Register button
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    And the confirmation email is logged as sent to "<email>"

  Examples:
    | registrationUrl                  | email                      | password       | confirmPassword  |
    | https://app.example.com/register | test_email@example.com     | Password123!   | Password123!     |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<registration_url>"
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the error message element is displayed
    And the error message text equals "<error_message>"

  Examples:
    | registration_url                  | email          | password            | confirmPassword      | error_message                       |
    | https://app.example.com/register  | invalid-email  | ValidPass123!      | ValidPass123!        | Please enter a valid email address  |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registration_url>"
    And the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirm_password>" in confirm password field
    And the user clicks Register button
    Then the user waits for error message to appear
    Then the current URL is "<expected_url>"
    And the email field contains "<email>"
    And the password field is not empty
    And the Register button is clicked
    And the error message element is displayed
    Then the error message text equals "<error_message>"

    Examples:
      | registration_url                   | email                        | password         | confirm_password    | expected_url                   | error_message          |
      | https://app.example.com/register   | existing_user@example.com   | ValidPass123!    | ValidPass123!       | https://app.example.com/register | Email already exists   |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    And I wait for the error message to appear
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Email already exists"

    Examples:
      | email                       | password          | confirmPassword     |
      | existing_user@example.com   | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    And the confirmation message is displayed

    Examples:
      | email                     | password            | confirmPassword        |
      | test_user@example.com     | SecurePass123!      | SecurePass123!         |
      | invalid-email             | ValidPass123!       | ValidPass123!          |
      |                           | ValidPass123!       | ValidPass123!          |
      | test_user@example.com     |                       |                        |
      | test_user@example.com     | short                | short                 |
      | test_user@example.com     | SecurePass123!       | DifferentPass456!     |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear

    Examples:
      | email                 | password | confirmPassword |
      | test_user@example.com |          |                  |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field (id="email")
    And the user enters password "<password>" in password field (id="password")
    And the user enters password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And the user clicks Register button (id="registerBtn")
    Then the confirmation message is displayed (id="confirmationMsg")
    And the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur

    Examples:
      | email                       | password             | confirmPassword       |
      | test_user+tag@example.com   | SecurePass123!      | SecurePass123!       |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "https://app.example.com/register"
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the confirmation message appears

  Examples:
    | email                        | password          | confirmPassword     |
    | valid_user@example.com      | ValidPass456!    | ValidPass456!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the confirmation message is displayed

    Examples:
      | email                   | password          | confirmPassword     |
      | test.user@example.com   | SecurePass123!    | SecurePass123!      |
  Scenario Outline: User Registration Process
    Given the user navigates to the registration URL "https://app.example.com/register"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the user waits for the error message to appear
    And the current URL is "https://app.example.com/register"
    And the email field contains "<email>"
    And the password field is not empty
    And the Register button is clicked
    And the error message element is displayed
    Then the error message text equals "Please enter a valid email address"

    Examples:
      | email          | password           | confirmPassword     |
      | invalid-email  | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    When the user enters "<email>" in the email field
    And the user enters "<password>" in the password field
    And the user enters "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should contain "<password>"
    And the confirm password field should contain "<confirmPassword>"
    And the Register button should be clicked
    Then the error message text should equal "Password must contain at least one number"

    Examples:
      | email                   | password             | confirmPassword       |
      | test_user@example.com   | NoNumbersHere!       | NoNumbersHere!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL contains "/confirmation"
    And I assert email field contains the maximum length email
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

    @user-registration-<index>
    Examples:
      | index | email                                                         | password           | confirmPassword     |
      | 1     | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123! |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    And I wait for confirmation message to appear (id="confirmationMsg")
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>" using getAttribute("value")
    And I assert password field is not empty using getAttribute("value")
    And I assert confirm password field matches password using getAttribute("value")
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed using isDisplayed()

    Examples:
      | email                     | password            | confirmPassword      |
      | test123_user@example.com  | SecurePass123!      | SecurePass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear

    Examples:
      | email                   | password | confirmPassword |
      | test_user@example.com   | short    | short           |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must contain at least one special character"

    Examples: 
      | email                    | password              | confirmPassword        |
      | test_user@example.com    | NoSpecialChar123      | NoSpecialChar123       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert the current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Password is required"

    Examples:
      | email                     | password | confirmPassword |
      | test_user@example.com     |          |                  |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    Then I assert error message text equals "Password must contain at least one number"

    Examples:
      | email                     | password            | confirmPassword       |
      | test_user@example.com     | NoNumbersHere!      | NoNumbersHere!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    And I wait for confirmation message to appear (id="confirmationMsg")
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

    Examples:
      | email                       | password          | confirmPassword     |
      | Test_User@example.com      | SecurePass123!   | SecurePass123!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field with id "email"
    And I enter password "<password>" in password field with id "password"
    And I enter password "<confirmPassword>" in confirm password field with id "confirmPassword"
    And I click Register button with id "registerBtn"
    And I wait for confirmation message to appear with id "confirmationMsg"
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    And I assert confirmation message is displayed

    Examples:
      | email                     | password            | confirmPassword       |
      | test_user@example.com     | SecurePass123!      | SecurePass123!        |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field with id "email"
    And the user enters password "<password>" in password field with id "password"
    And the user enters password "<confirmPassword>" in confirm password field with id "confirmPassword"
    And the user clicks on Register button with id "registerBtn"
    And the user waits for error message to appear with id "emailError"
    Then the current URL should be "https://app.example.com/register"
    And the email field should be empty
    And the password field should not be empty
    And the Register button should be clicked
    And the error message element should be displayed
    And the error message text should equal "Email is required"

    Examples:
      | email | password        | confirmPassword   |
      |       | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    And I wait for confirmation message to appear
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    And I assert confirmation message is displayed

    Examples:
      | email                   | password   | confirmPassword |
      | test_user@example.com   | P@ssw0rd  | P@ssw0rd       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

    Examples:
      | email                    | password           | confirmPassword      |
      | test-user@example.com    | SecurePass123!     | SecurePass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Passwords do not match"

    Examples:
      | email                     | password        | confirmPassword         |
      | test_user@example.com     | Password123!    | DifferentPassword456!    |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    Then I assert error message text equals "Password must be at least 8 characters"

    Examples:
      | email                    | password | confirmPassword |
      | test_user@example.com    | short    | short           |
@empty-password
Scenario Outline: User Registration Process Without Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see the error message "Password is required"
  And the error message element should be displayed

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   |          |                  |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text equals "Password must contain at least one special character"

  Examples:
    | email                     | password             | confirmPassword        |
    | test_user@example.com     | NoSpecialChar123     | NoSpecialChar123       |
@empty_email_registration
Scenario Outline: User Registration Attempt with Empty Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see an error message with text "Email is required"

  Examples:
    | email | password        | confirmPassword   |
    |       | Password123!    | Password123!      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should be redirected to the confirmation page with URL containing "/confirmation"

  Examples:
    | email                      | password             | confirmPassword      |
    | test_user@example.com      | SecurePass123!      | SecurePass123!       |
    | invalid-email              | ValidPass123!       | ValidPass123!        |
    |                           | ValidPass123!       | ValidPass123!        |
    | test_user@example.com      |                       |                       |
    | test_user@example.com      | short                | short                |
    | test_user@example.com      | SecurePass123!      | DifferentPass456!    |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the current URL should contain "/confirmation"
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the Register button is clicked with no errors
  And the confirmation message should be displayed

  Examples:
    | email                   | password                     | confirmPassword             |
    | unique_user@example.com | AnotherSecurePass123!       | AnotherSecurePass123!       |
@duplicate-email
Scenario Outline: User Registration Process with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message element should be displayed
  And the error message text should equal "Email already exists"

  Examples:
    | email                       | password          | confirmPassword      |
    | existing_user@example.com   | ValidPass123!     | ValidPass123!        |
@error-message-when-email-empty
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message "Email is required"

  Examples:
    | email | password         | confirmPassword   |
    |       | Password123!     | Password123!      |
@password-mismatch
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the user should see an error message "Passwords do not match"

  Examples:
    | email                     | password        | confirmPassword          |
    | test_user@example.com     | Password123!    | DifferentPassword456!    |
@short_password_error
Scenario Outline: User Registration Process
  When I navigate to registration URL
  And I enter email "<email>" in email field
  And I enter password "<password>" in password field
  And I enter password "<confirmPassword>" in confirm password field
  And I click Register button
  Then I wait for error message to appear
  And I assert error message text equals "Password must be at least 8 characters"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   | short    | short           |
@invalid-password
Scenario Outline: User Registration with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text equals "Password must contain at least one special character"

  Examples:
    | email                    | password            | confirmPassword       |
    | test_user@example.com   | NoSpecialChar123    | NoSpecialChar123      |
@registration-email-confirmation
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
  And the Register button should be clicked with no errors
  Then the confirmation email should be logged as sent to "<email>"

  Examples:
    | email                     | password         | confirmPassword    |
    | test_email@example.com    | Password123!     | Password123!       |
@duplicate-email-registration
Scenario Outline: User Registration Process with Existing Email
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should be displayed
  And the error message text should equal "Email already exists"

  Examples:
    | email                       | password         | confirmPassword     |
    | existing_user@example.com   | ValidPass123!    | ValidPass123!       |
@max-length-email-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be directed to the confirmation page
  And the email field should contain the maximum length email
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                                                        | password            | confirmPassword      |
    | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123! |
@missing-password
Scenario Outline: User Registration Without Password
  Given the user navigates to the registration URL "https://app.example.com/register"
  When I enter email "<email>" in email field
  And I enter password "<password>" in password field
  And I enter password "<confirmPassword>" in confirm password field
  And I click the Register button
  Then the current URL should be "https://app.example.com/register"
  And the email field should contain "<email>"
  And the password field should be empty
  And the Register button should be clicked
  And the error message element should be displayed
  And the error message text should equal "Password is required"

  Examples:
    | email                   | password | confirmPassword |
    | test_user@example.com   |          |                 |
@invalid-email-registration
Scenario Outline: User Registration Process with Invalid Email
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the error message element is displayed
  And the error message text equals "Please enter a valid email address"

  Examples:
    | email            | password           | confirmPassword      |
    | invalid-email    | ValidPass123!      | ValidPass123!        |
@valid-registration
Scenario Outline: User Registration Process
  Given the user navigates to the registration URL
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                        | password          | confirmPassword    |
    | test123_user@example.com    | SecurePass123!    | SecurePass123!     |
@invalid-password
Scenario Outline: User Registration Process with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message should display "Password must contain at least one number"

  Examples:
    | email                     | password           | confirmPassword      |
    | test_user@example.com     | NoNumbersHere!     | NoNumbersHere!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user navigates to registration URL
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the confirmation message

  Examples:
    | email                      | password          | confirmPassword     |
    | test_user+tag@example.com | SecurePass123!    | SecurePass123!      |
@short-password-error
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
@invalid-password
Scenario Outline: User Registration with Invalid Password
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the error message "Password must contain at least one number"

  Examples:
    | email                     | password            | confirmPassword       |
    | test_user@example.com     | NoNumbersHere!      | NoNumbersHere!        |
@password-mismatch
Scenario Outline: User Registration with Mismatched Passwords
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the error message text should equal "Passwords do not match"

  Examples:
    | email                   | password       | confirmPassword          |
    | test_user@example.com   | Password123!   | DifferentPassword456!     |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                   | password           | confirmPassword      |
    | test.user@example.com   | SecurePass123!     | SecurePass123!       |
@valid_registration
Scenario Outline: User Registration Process
  Given the user navigates to registration URL "https://app.example.com/register"
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should see the confirmation message

  Examples:
    | email                     | password           | confirmPassword      |
    | test_user@example.com     | SecurePass123!     | SecurePass123!       |
@valid-registration
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When the user enters "<email>" in the email field
  And the user enters "<password>" in the password field
  And the user enters "<confirmPassword>" in the confirm password field
  And the user clicks the Register button
  Then the user should be directed to a confirmation page
  And the email field should contain "<email>"
  And the password field should not be empty
  And the confirm password field should match the password
  And the confirmation message should be displayed

  Examples:
    | email                   | password          | confirmPassword     |
    | test-user@example.com   | SecurePass123!    | SecurePass123!      |
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
  And the Register button should be clicked with no errors
  And the confirmation message should be displayed

  Examples:
    | email                     | password           | confirmPassword     |
    | Test_User@example.com     | SecurePass123!    | SecurePass123!      |
@valid-registration
Scenario Outline: User Registration Process
  Given the user navigates to the registration URL
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then the confirmation message should be displayed

  Examples:
    | email                     | password          | confirmPassword    |
    | valid_user@example.com    | ValidPass456!     | ValidPass456!      |
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
  And the Register button is clicked and no errors occur
  Then the confirmation message should be displayed

  Examples:
    | email                     | password  | confirmPassword |
    | test_user@example.com     | P@ssw0rd  | P@ssw0rd       |
@invalid-email-format
Scenario Outline: User Registration Process
  Given the user is on the Registration Page
  When I enter "<email>" in the email field
  And I enter "<password>" in the password field
  And I enter "<confirmPassword>" in the confirm password field
  And I click the Register button
  Then I should see the error message "<errorMessage>"

  Examples:
    | email           | password          | confirmPassword    | errorMessage                     |
    | invalid-email   | ValidPass123!     | ValidPass123!      | Please enter a valid email address |
  Scenario Outline: User Registration Process
    Given I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    When I click Register button (id="registerBtn")
    Then I wait for error message to appear (id="emailError")
    And I assert current URL is "https://app.example.com/register"
    And I assert email field is empty
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Email is required"

    Examples:
      | email | password        | confirmPassword   |
      |       | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field (id="email")
    And the user enters password "<password>" in the password field (id="password")
    And the user enters password "<confirmPassword>" in the confirm password field (id="confirmPassword")
    And the user clicks the Register button (id="registerBtn")
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    Then the confirmation email is logged as sent to "<email>"

    Examples:
      | email                    | password        | confirmPassword   |
      | test_email@example.com   | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registrationUrl>"
    And enters email "<email>" in email field
    And enters password "<password>" in password field
    And enters password "<confirmPassword>" in confirm password field
    And clicks Register button
    Then the confirmation message is displayed

    Examples:
      | registrationUrl                     | email                     | password                     | confirmPassword               |
      | https://app.example.com/register    | unique_user@example.com   | AnotherSecurePass123!      | AnotherSecurePass123!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

    Examples:
      | email                      | password          | confirmPassword     |
      | valid_user@example.com     | ValidPass456!     | ValidPass456!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    And the confirmation message is displayed

  Examples:
    | email                     | password               | confirmPassword        |
    | test_user@example.com     | SecurePass123!        | SecurePass123!         |
    | invalid-email             | ValidPass123!         | ValidPass123!          |
    |                          | ValidPass123!         | ValidPass123!          |
    | test_user@example.com     |                        |                        |
    | test_user@example.com     | short                  | short                  |
    | test_user@example.com     | SecurePass123!        | DifferentPass456!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    And I wait for the error message to appear
    Then I assert the current URL is "https://app.example.com/register"
    And I assert the email field contains "<email>"
    And I assert the password field is not empty
    And I assert the Register button is clicked
    And I assert the error message element is displayed
    Then I assert the error message text equals "Please enter a valid email address"

    Examples:
      | email            | password         | confirmPassword   |
      | invalid-email    | ValidPass123!    | ValidPass123!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Password is required"

    Examples: 
      | email                     | password | confirmPassword |
      | test_user@example.com     |          |                  |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should contain "<password>"
    And the confirm password field should contain "<confirmPassword>"
    And the Register button should be clicked
    Then the error message text should equal "Passwords do not match"

    Examples:
      | email                   | password        | confirmPassword         |
      | test_user@example.com   | Password123!    | DifferentPassword456!    |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "https://app.example.com/register"
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should contain "<password>"
    And the confirm password field should contain "<confirmPassword>"
    And the Register button is clicked
    Then the error message text should equal "Password must be at least 8 characters"

    Examples:
      | email                   | password | confirmPassword |
      | test_user@example.com   | short    | short           |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I wait for error message to appear (id="emailExistsError")
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Email already exists"

    Examples:
      | email                      | password          | confirmPassword     |
      | existing_user@example.com  | ValidPass123!    | ValidPass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Password is required"

    Examples: 
      | email                     | password | confirmPassword |
      | test_user@example.com     |          |                  |
email                   | password | confirmPassword |
      | test_user@example.com   | short    | short           |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I wait for error message to appear (id="emailExistsError")
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Email already exists"

    Examples:
      | email                      | password          | confirmPassword     |
      | existing_user@example.com  | ValidPass123!    | ValidPass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    And I wait for the error message to appear
    Then I assert the current URL is "https://app.example.com/register"
    And I assert the email field contains "<email>"
    And I assert the password field is not empty
    And I assert the Register button is clicked
    And I assert the error message element is displayed
    Then I assert the error message text equals "Please enter a valid email address"

    Examples:
      | email            | password         | confirmPassword   |
      | invalid-email    | ValidPass123!    | ValidPass123!      |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should contain "<password>"
    And the confirm password field should contain "<confirmPassword>"
    And the Register button should be clicked
    Then the error message text should equal "Passwords do not match"

    Examples:
      | email                   | password        | confirmPassword         |
      | test_user@example.com   | Password123!    | DifferentPassword456!    |
  Scenario Outline: User Registration Process
    Given I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    When I click Register button (id="registerBtn")
    Then I wait for error message to appear (id="emailError")
    And I assert current URL is "https://app.example.com/register"
    And I assert email field is empty
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    Then I assert error message text equals "Email is required"

    Examples:
      | email | password        | confirmPassword   |
      |       | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert error message text equals "Password must contain at least one special character"

    Examples:
      | email                    | password              | confirmPassword         |
      | test_user@example.com    | NoSpecialChar123      | NoSpecialChar123        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear
    And I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must contain at least one number"

    Examples:
      | email                  | password           | confirmPassword       |
      | test_user@example.com  | NoNumbersHere!     | NoNumbersHere!        |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL should be "https://app.example.com/register"
    And the email field should contain "<email>"
    And the password field should contain "<password>"
    And the confirm password field should contain "<confirmPassword>"
    And the Register button should be clicked
    Then the error message text should equal "Password must contain at least one special character"

    Examples:
      | email                     | password             | confirmPassword        |
      | test_user@example.com     | NoSpecialChar123     | NoSpecialChar123       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the error message text equals "Password must contain at least one number"

    Examples:
      | email                     | password             | confirmPassword        |
      | test_user@example.com     | NoNumbersHere!       | NoNumbersHere!         |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    And I wait for confirmation message to appear (id="confirmationMsg")
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    And I assert confirmation message is displayed

    Examples:
      | email                   | password              | confirmPassword       |
      | Test_User@example.com   | SecurePass123!       | SecurePass123!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for confirmation message to appear

    Examples:
      | email                   | password   | confirmPassword |
      | test_user@example.com   | P@ssw0rd  | P@ssw0rd       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for confirmation message to appear

    Examples:
      | email                        | password          | confirmPassword     |
      | test_user+tag@example.com   | SecurePass123!   | SecurePass123!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I wait for confirmation message to appear (id="confirmationMsg")
    And I assert current URL contains "/confirmation"
    And I assert email field contains the maximum length email using getAttribute("value")
    And I assert password field is not empty using getAttribute("value")
    And I assert confirm password field matches password using getAttribute("value")
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed using isDisplayed()

    Examples:
      | email                                                        | password           | confirmPassword     |
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123! |
@UserRegistrationProcess
Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I wait for confirmation message to appear (id="confirmationMsg")
    Then I assert current URL contains "/confirmation"
    Then I assert email field contains "<email>"
    Then I assert password field is not empty
    Then I assert confirm password field matches password
    Then I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

Examples:
    | email                   | password           | confirmPassword      |
    | test-user@example.com   | SecurePass123!     | SecurePass123!       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    And I wait for confirmation message to appear (id="confirmationMsg")
    Then I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

    Examples:
      | email                        | password             | confirmPassword       |
      | test123_user@example.com     | SecurePass123!      | SecurePass123!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in email field with id "email"
    And the user enters password "<password>" in password field with id "password"
    And the user enters password "<confirmPassword>" in confirm password field with id "confirmPassword"
    And the user clicks Register button with id "registerBtn"
    Then the confirmation message should be displayed with id "confirmationMsg"

    Examples:
      | email                     | password           | confirmPassword      |
      | test.user@example.com    | SecurePass123!    | SecurePass123!       |
  Scenario Outline: User Registration Process
    When the user navigates to the registration URL "<registrationUrl>"
    And enters email "<email>" in the email field
    And enters password "<password>" in the password field
    And enters password "<confirmPassword>" in the confirm password field
    And clicks the Register button
    Then the confirmation message is displayed
    
  Examples: 
    | registrationUrl                     | email                     | password           | confirmPassword     |
    | https://app.example.com/register     | test_user@example.com    | SecurePass123!     | SecurePass123!      |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registration_url>"
    And the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the confirmation message is displayed

    Examples:
      | registration_url                   | email                           | password                     | confirmPassword              |
      | https://app.example.com/register   | unique_user@example.com        | AnotherSecurePass123!       | AnotherSecurePass123!        |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "https://app.example.com/register"
    And enters email "<email>" in email field
    And enters password "<password>" in password field
    And enters password "<confirmPassword>" in confirm password field
    And clicks Register button
    Then the confirmation message is displayed

    Examples:
      | email                       | password         | confirmPassword    |
      | valid_user@example.com      | ValidPass456!    | ValidPass456!      |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I check email system for confirmation email sent to "<email>"
    And I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    And I assert confirmation email is logged as sent to "<email>"

    Examples:
      | email                    | password        | confirmPassword   |
      | test_email@example.com   | Password123!    | Password123!      |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL contains "/confirmation"
    And the email field contains "<email>"
    And the password field is not empty
    And the confirm password field matches password
    And the Register button is clicked and no errors occur
    And the confirmation message is displayed

    Examples:
      | email                     | password              | confirmPassword        |
      | test_user@example.com     | SecurePass123!       | SecurePass123!        |
      | invalid-email             | ValidPass123!        | ValidPass123!         |
      |                           | ValidPass123!        | ValidPass123!         |
      | test_user@example.com     |                       |                         |
      | test_user@example.com     | short                 | short                  |
      | test_user@example.com     | SecurePass123!       | DifferentPass456!     |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<url>"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL should be "<expectedUrl>"
    And the email field should be "<emailFieldStatus>"
    And the password field should not be empty
    And the Register button should be clicked
    And the error message should be displayed
    Then the error message text should be "<errorMessageText>"

  Examples:
    | url                              | email | password        | confirmPassword   | expectedUrl                     | emailFieldStatus | errorMessageText        |
    | https://app.example.com/register | ""    | Password123!    | Password123!      | https://app.example.com/register | empty            | Email is required       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear

    Examples:
      | email                 | password | confirmPassword |
      | test_user@example.com |          |                 |
  Scenario Outline: User Registration Process
    Given the user is on the registration page
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the user should see an error message

    Examples:
      | email          | password          | confirmPassword     |
      | invalid-email  | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<registration_url>"
    And the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirm_password>" in the confirm password field
    When the user clicks the register button
    Then the error message should display "Passwords do not match"

  Examples:
    | registration_url                   | email                     | password        | confirm_password          |
    | https://app.example.com/register   | test_user@example.com    | Password123!    | DifferentPassword456!     |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field with id "email"
    And I enter password "<password>" in password field with id "password"
    And I enter password "<confirmPassword>" in confirm password field with id "confirmPassword"
    And I click Register button with id "registerBtn"
    Then I wait for error message to appear with id "emailExistsError"
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    And I assert error message text equals "Email already exists"

    Examples:
      | email                       | password           | confirmPassword       |
      | existing_user@example.com   | ValidPass123!      | ValidPass123!         |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    Then I should see the error message text equals "Password must be at least 8 characters"

    Examples:
      | email                       | password | confirmPassword |
      | test_user@example.com      | short    | short           |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<registration_url>"
    And the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirm_password>" in the confirm password field
    When the user clicks the register button
    Then the error message should display "Passwords do not match"

  Examples:
    | registration_url                   | email                     | password        | confirm_password          |
    | https://app.example.com/register   | test_user@example.com    | Password123!    | DifferentPassword456!     |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear

    Examples:
      | email                 | password | confirmPassword |
      | test_user@example.com |          |                 |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in the email field
    And I enter password "<password>" in the password field
    And I enter password "<confirmPassword>" in the confirm password field
    And I click the Register button
    Then I should see the error message text equals "Password must be at least 8 characters"

    Examples:
      | email                       | password | confirmPassword |
      | test_user@example.com      | short    | short           |
  Scenario Outline: User Registration Process
    Given the user is on the registration page
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the user should see an error message

    Examples:
      | email          | password          | confirmPassword     |
      | invalid-email  | ValidPass123!     | ValidPass123!       |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<url>"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the current URL should be "<expectedUrl>"
    And the email field should be "<emailFieldStatus>"
    And the password field should not be empty
    And the Register button should be clicked
    And the error message should be displayed
    Then the error message text should be "<errorMessageText>"

  Examples:
    | url                              | email | password        | confirmPassword   | expectedUrl                     | emailFieldStatus | errorMessageText        |
    | https://app.example.com/register | ""    | Password123!    | Password123!      | https://app.example.com/register | empty            | Email is required       |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field with id "email"
    And I enter password "<password>" in password field with id "password"
    And I enter password "<confirmPassword>" in confirm password field with id "confirmPassword"
    And I click Register button with id "registerBtn"
    Then I wait for error message to appear with id "emailExistsError"
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert Register button is clicked
    And I assert error message element is displayed
    And I assert error message text equals "Email already exists"

    Examples:
      | email                       | password           | confirmPassword       |
      | existing_user@example.com   | ValidPass123!      | ValidPass123!         |
  Scenario Outline: User Registration Process
    Given I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    When I click Register button (id="registerBtn")
    Then I assert current URL is "https://app.example.com/register"
    And I assert email field contains "<email>"
    And I assert password field contains "<password>"
    And I assert confirm password field contains "<confirmPassword>"
    And I assert Register button is clicked
    Then I assert error message text equals "Password must contain at least one special character" using getText()

    Examples:
      | email                      | password              | confirmPassword        |
      | test_user@example.com     | NoSpecialChar123      | NoSpecialChar123       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>"
    And the user enters password "<password>"
    And the user enters password "<confirmPassword>"
    And the user clicks the Register button
    Then the current URL is "https://app.example.com/register"
    And the email field contains "<email>"
    And the password field contains "<password>"
    And the confirm password field contains "<confirmPassword>"
    And the Register button is clicked
    Then the error message text equals "Password must contain at least one number"

    Examples:
      | email                     | password            | confirmPassword       |
      | test_user@example.com     | NoNumbersHere!      | NoNumbersHere!        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirmPassword>" in confirm password field
    And I click Register button
    Then I wait for error message to appear

    Examples:
      | email                   | password             | confirmPassword        |
      | test_user@example.com   | NoNumbersHere!      | NoNumbersHere!         |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registrationUrl>"
    And the user enters email "<email>"
    And the user enters password "<password>"
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the user should see the error message "<errorMessage>"

    Examples:
      | registrationUrl                   | email                      | password              | confirmPassword       | errorMessage                                         |
      | https://app.example.com/register | test_user@example.com     | NoSpecialChar123     | NoSpecialChar123      | Password must contain at least one special character |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registrationUrl>"
    And the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks Register button
    Then the confirmation message is displayed

    Examples:
      | registrationUrl                    | email                       | password             | confirmPassword      |
      | https://app.example.com/register   | test123_user@example.com   | SecurePass123!      | SecurePass123!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the confirmation message is displayed

    Examples:
      | email                     | password           | confirmPassword      |
      | test_user+tag@example.com | SecurePass123! | SecurePass123! |
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "<registrationUrl>"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the user waits for the confirmation message to appear

    Examples:
      | registrationUrl                  | email                     | password   | confirmPassword |
      | https://app.example.com/register | test_user@example.com    | P@ssw0rd  | P@ssw0rd        |
  Scenario Outline: User Registration Process
    When I enter email "<email>" in email field (id="email")
    And I enter password "<password>" in password field (id="password")
    And I enter password "<confirmPassword>" in confirm password field (id="confirmPassword")
    And I click Register button (id="registerBtn")
    Then I wait for confirmation message to appear (id="confirmationMsg")
    And I assert current URL contains "/confirmation"
    And I assert email field contains "<email>"
    And I assert password field is not empty
    And I assert confirm password field matches password
    And I assert Register button is clicked and no errors occur
    Then I assert confirmation message is displayed

    Examples:
      | email                     | password            | confirmPassword       |
      | Test_User@example.com     | SecurePass123!     | SecurePass123!        |
  @UserRegistrationProcess
  Scenario Outline: User Registration Process
    Given the user navigates to registration URL "https://app.example.com/register"
    When the user enters email "<email>" in the email field
    And the user enters password "<password>" in the password field
    And the user enters password "<confirmPassword>" in the confirm password field
    And the user clicks the Register button
    Then the user waits for the confirmation message to appear
    And the user asserts the current URL contains "/confirmation"
    And the user asserts the email field contains the maximum length email
    And the user asserts the password field is not empty
    And the user asserts the confirm password field matches password
    And the user asserts that the Register button is clicked and no errors occur
    And the user asserts the confirmation message is displayed

    Examples:
      | email                                                          | password          | confirmPassword    |
      | aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@example.com | SecurePass123! | SecurePass123!     |
  Scenario Outline: User Registration Process
    Given I navigate to registration URL "<registration_url>"
    And I enter email "<email>" in email field
    And I enter password "<password>" in password field
    And I enter password "<confirm_password>" in confirm password field
    And I click Register button
    Then I wait for confirmation message to appear

    Examples:
      | registration_url                    | email                     | password           | confirm_password    |
      | https://app.example.com/register    | test_user@example.com    | SecurePass123!     | SecurePass123!      |
  Scenario Outline: User Registration Process
    When the user navigates to registration URL "<registrationUrl>"
    And the user enters email "<email>" in email field
    And the user enters password "<password>" in password field
    And the user enters password "<confirmPassword>" in confirm password field
    And the user clicks the Register button
    Then the confirmation message should be displayed

    Examples:
      | registrationUrl                   | email                     | password            | confirmPassword      |
      | https://app.example.com/register  | test.user@example.com    | SecurePass123!      | SecurePass123!       |
  Scenario Outline: User Registration Process
    When the user enters email "<email>" in the email field (id="email")
    And the user enters password "<password>" in the password field (id="password")
    And the user enters password "<confirmPassword>" in the confirm password field (id="confirmPassword")
    And the user clicks the Register button (id="registerBtn")
    Then the confirmation message should be displayed (id="confirmationMsg")

    Examples:
      | email                   | password            | confirmPassword      |
      | test-user@example.com   | SecurePass123!     | SecurePass123!       |
