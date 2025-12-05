Feature: WellboreConfiguration

Background: User is on the Job Stage Setup Page
Given the user is on the Job Stage Setup Page

@chemical_proppant_email_delivery
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Job Stage Setup Page
  When the user configures Chemicals
  And the user configures Proppants
  And the user sets up Vendor Email
  And the user configures Chemical Delivery Tracking
  Then all required input data should be properly added, saved, and tracked

  Examples:
    | Setting                |
    | Chemicals              |
    | Proppants              |
    | Vendor Email Setup     |
    | Chemical Delivery Tracking |@jwt-authentication
Scenario Outline: PadService Authentication with JWT
  Given the user has a valid JWT token
  When the PAD-Service processes the JWT token
  And it retrieves user roles and permissions from the external user information API
  Then the user roles and permissions should be accurately mapped for the request

  Examples:
    | jwt_token                 |
    | valid.jwt.token.here     |
    | another.valid.jwt.token   |
@configuration_setup
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user enters the Chemical information
  And the user enters the Proppant information
  And the user sets up the Vendor Email
  And the user configures the Chemical Delivery Tracking
  Then the all required input data is properly added, saved, and tracked throughout the job lifecycle

  Examples:
    | Chemical            | Proppant         | Vendor Email          |
    | Chemical A         | Proppant X      | vendor@example.com    |
    | Chemical B         | Proppant Y      | vendor2@example.com   |
@setup_job_stages
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Job Stage Configuration Page
  When the user adds a Chemical
  And the user adds a Proppant
  And the user sets up Vendor Email
  And the user configures Chemical Delivery Tracking
  Then all required input data should be properly added, saved, and tracked

  Examples:
    | Job Stage     |
    | Completion    |
    | Fracturing    |
