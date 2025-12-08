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
@chemical_proppant_setup
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user selects the job "<job>"
  And the user selects the stage "<stage>"
  When the user configures the chemicals as "<chemicals>"
  And the user adds proppants as "<proppants>"
  And the user sets up vendor email as "<vendor_email>"
  And the user configures chemical delivery tracking as "<delivery_tracking>"
  Then the user should receive a confirmation that the setup has been saved

  Examples:
    | job      | stage        | chemicals          | proppants       | vendor_email        | delivery_tracking  |
    | Job001   | StageA      | ChemicalA, ChemicalB | ProppantA     | vendor@example.com   | Yes                |
    | Job002   | StageB      | ChemicalC           | ProppantB     | vendor2@example.com  | No                 |
@chemical_proppant_setup
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user selects the job
  And the user selects the stage
  When the user enters the chemical details
  And the user enters the proppant details
  And the user enters the vendor email information
  And the user enters the delivery tracking information
  Then the user saves the configuration

  Examples:
    | chemical_details  | proppant_details | vendor_email       | delivery_tracking     |
    | Water and Sand    | 50 Mesh Sand     | vendor@example.com  | Track123              |
    | Acid and Polymer   | 100 Mesh Sand    | vendor2@example.com | Track456              |
@setup_job_stages
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user selects the job stage
  When the user configures the Chemicals
  And the user configures the Proppants
  And the user sets the Vendor Email
  And the user configures Chemical Delivery Tracking
  Then the user should see a confirmation message that the setup is complete

  Examples:
    | job_stage      |
    | Job Stage 1   |
    | Job Stage 2   |
