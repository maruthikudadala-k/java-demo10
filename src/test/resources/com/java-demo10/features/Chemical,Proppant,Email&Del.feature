Feature: Chemical Setup

Background: User is on the Chemical Setup screen
Given the user is on the Chemical Setup screen

@valid-chemical-setup
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters a valid designed volume "<designed_volume>"
  And the user clicks on the "Save" button
  And the user refreshes the Chemical Setup screen
  Then the added "<chemical_name>" should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Linear Gel    | 25%                  | 800 liters      |@add_acid_chemical
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters a valid designed volume "<designed_volume>"
  And the user clicks on the "Save" button
  And the user refreshes the Chemical Setup screen
  Then the added "<chemical_name>" should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | 15%                  | 1000 liters     |
@job_stage_navigation
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Jobs section
  When the user selects a Job from the list
  And the user chooses a Well associated with the Job
  And the user selects a Stage for the Job
  And the user clicks on the Chemical Setup option
  Then the Chemical Setup screen loads successfully
  And the user clicks on the Proppant Setup option
  Then the Proppant Setup screen loads successfully
  And the user clicks on the Email Setup option
  Then the Email Setup screen loads successfully

  Examples:
    | Job    | Well    | Stage   |
    | Job1   | Well1   | Stage1  |
@valid-diverters-addition
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Chemical Setup screen
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters "<design_concentration>"
  And the user enters "<designed_volume>"
  And the user clicks on the "Save" button
  And the user refreshes the Chemical Setup screen
  Then the added Diverters should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Diverters     | 10%                  | 300 liters      |
@add_chemical_vendor
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters a valid PO number "<po_number>"
  And the user enters a valid email address "<email>"
  And the user clicks on the "Save" button
  And the user refreshes the Email Setup screen
  Then the added Chemical vendor should appear in the list

  Examples:
    | po_number | email                |
    | PO12345   | vendor@example.com   |
@proppant_setup
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Proppant" button
  And the user selects a Proppant name "<proppant_name>" from the dropdown
  And the user enters a valid total design volume "<total_design_volume>"
  And the user clicks on the "Save" button
  Then the Proppant is saved successfully

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | 1000                |
    | Proppant B    | 2000                |
    | Proppant C    | 1500                |
    | Proppant D    | 2500                |

When the user refreshes the Proppant Setup screen
Then all added Proppants appear in the list
@add_slickwater
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters a valid designed volume "<designed_volume>"
  And the user clicks on the "Save" button
  And the user refreshes the Chemical Setup screen
  Then the added "<chemical_name>" should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Slickwater    | 20%                  | 500 liters      |
@validate_accessibility
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user navigates to the "<setup_screen>" screen
  And the user uses keyboard navigation to focus on the first input field
  Then the input field should have an accessible label
  And the user uses the Tab key to navigate through all fields
  Then ARIA roles should be correctly implemented in the HTML elements

  Examples:
    | setup_screen        |
    | Chemical Setup      |
    | Proppant Setup      |
    | Email Setup         |
@validate_proppant_values
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I add a proppant with specific values "<proppant_name>" and "<weight>"
  And I save the proppant
  And I refresh the Proppant Setup screen
  And I locate the added proppant in the list
  Then the displayed values for "<proppant_name>" should match "<weight>"
  
  Examples:
    | proppant_name | weight   |
    | Proppant A    | 1000 lbs |
    | Proppant B    | 1500 lbs |
@validate_email_addresses
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I add a vendor with the email address "<email>"
  And I save the vendor
  And I refresh the Email Setup screen
  And I locate the added vendor in the list
  Then the displayed email address matches "<email>"
  
  Examples:
    | email               |
    | vendor@example.com  |
    | vendor2@example.com |
@validate_dropdowns
Scenario Outline: Chemical, Proppant, Email Setup Dropdown Validation
  Given the user is on the Chemical Setup screen
  When the user clicks on the chemical name dropdown
  Then all expected chemical names are displayed
  
  Given the user is on the Proppant Setup screen
  When the user clicks on the proppant name dropdown
  Then all expected proppant names are displayed
  
  Given the user is on the Email Setup screen
  When the user clicks on the vendor type dropdown
  Then all expected vendor types are displayed

  Examples:
    |   |
@empty_proppant_name
Scenario Outline: Verify Error Message When Adding Proppant Without Name
  When the user clicks on the "Add Proppant" button
  And the user leaves the proppant name field empty
  And the user enters "<total_design_volume>"
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the proppant should not be added to the list
  And the form should remain on the Proppant Setup screen

  Examples:
    | total_design_volume |
    | 1000 lbs           |
@error_message_no_BOL
Scenario Outline: Chemical Delivery Record Creation without BOL Number
  When the user clicks on the "Add Delivery Record" button
  And the user selects a vendor from the vendor dropdown
  And the user selects a PO from the PO dropdown
  And the user selects a chemical type from the chemical type dropdown
  And the user leaves the BOL number field empty
  And the user enters "<received_quantity>" as the received quantity
  And the user clicks on the "Save" button
  Then an error message is displayed
  And the delivery record is not created

  Examples:
    | received_quantity |
    | 500               |
@invalid_design_concentration
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters "<design_concentration>"
  And the user enters "<designed_volume>"
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the chemical should not be added to the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | -5%                  | 1000 liters     |
@validate_buttons
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I click on the "Add Chemical" button
  And I fill in the "<chemical_name>", "<chemical_type>", "<quantity>", "<supplier>"
  And I click "Save"
  When I click on the "Add Chemical" button again
  And I fill in the "<chemical_name>", "<chemical_type>", "<quantity>", "<supplier>"
  And I click "Save & New"
  Then a new chemical entry should be created and the form should be reset
  When I navigate to the Proppant Setup screen
  And I click on the "Save" button after adding a proppant
  Then the proppant should be saved successfully

  Examples:
    | chemical_name | chemical_type | quantity | supplier |
    | ChemicalA     | Type1         | 100      | Supplier1 |
    | ChemicalB     | Type2         | 200      | Supplier2 |
@valid_email_setup
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Email Setup screen
  When the user locates the Email Address section
  And the user clicks on the first email address field
  And the user enters "<first_email>"
  And the user clicks on the second email address field
  And the user enters "<second_email>"
  And the user clicks the "Save" button
  Then the changes should be saved successfully
  And the Email Setup screen should refresh without errors

  Examples:
    | first_email            | second_email           |
    | recipient1@example.com | recipient2@example.com  |
@valid_delivery_record_creation
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL_number>"
  And the user enters a valid received quantity "<received_quantity>"
  And the user clicks on the "Save" button
  Then the delivery record should be saved successfully

  Examples:
    | vendor        | PO       | chemical_type        | BOL_number | received_quantity |
    | vendor_name   | PO12345  | chemical_type_name   | BOL12345   | 500               |
@invalid_received_quantity
Scenario Outline: Create Delivery Record with Invalid Received Quantity
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL_number>"
  And the user enters an invalid received quantity "<received_quantity>"
  And the user clicks on the "Save" button
  Then an error message is displayed
  And the delivery record is not created

  Examples:
    | vendor          | PO      | chemical_type | BOL_number | received_quantity |
    | abcd pvt.ltd   | PO12345 | Chemical A    | BOL12345   | -100              |
@invalid_total_design_volume
Scenario Outline: Verify Error Message for Negative Total Design Volume
  When the user clicks on the "Add Proppant" button
  And the user selects "<proppant_name>" from the dropdown
  And the user enters an invalid total design volume "<total_design_volume>"
  And the user clicks on the "Save" button
  Then the user should see an error message
  And the proppant should not be added to the list
  And the form should remain on the Proppant Setup screen

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | -500                |
@validate_added_chemicals_proppants
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user adds a chemical and saves it
  And the user refreshes the Chemical Setup screen
  Then the added chemical is still present in the list
  When the user navigates to the Proppant Setup screen
  And the user adds a proppant and saves it
  And the user refreshes the Proppant Setup screen
  Then the added proppant is still present in the list
@error_message_empty_name
Scenario Outline: Verify Error Message for Empty Chemical Name
  When the user clicks on the "Add Chemical" button
  And the user leaves the chemical name field empty
  And the user enters "<design_concentration>"
  And the user enters "<designed_volume>"
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the chemical should not be added to the list

  Examples:
    | design_concentration | designed_volume |
    | 15%                  | 1000 liters     |
@validate_proppant_addition
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I click on the "Add Proppant" button
  And I select "<proppant_name>" from the dropdown
  And I enter "<total_design_volume>"
  And I click on the "Save" button
  Then the proppant should be saved successfully

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | 1000 lbs           |
    | Proppant A    | 1000 lbs           |
    | Proppant A    | 1000 lbs           |
    | Proppant A    | 1000 lbs           |

When I refresh the Proppant Setup screen
Then all added proppants should appear in the list
@add_proppant_edge_values
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Proppant" button
  And the user selects a proppant name "<proppant_name>" from the dropdown
  And the user enters a total design volume of <design_volume> lbs
  And the user clicks on the "Save" button
  Then the user verifies that the proppant is added successfully

Examples:
  | proppant_name | design_volume |
  | Proppant A    | 0             |
  | Proppant A    | 5000          |

@verify_added_proppants
Scenario Outline: Verify All Added Proppants Appear in the List
  When the user views the proppant list
  Then all added proppants should appear in the list

Examples:
  | proppant_name |
  | Proppant A    |
@update_meeting_id
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user locates the "Others" section
  When the user clicks on the Meeting ID field
  And the user enters a valid Meeting ID "<meeting_id>"
  And the user clicks on the "Save" button
  And the user refreshes the Email Setup screen
  Then the updated Meeting ID should be displayed correctly
  And no validation errors should occur

  Examples:
    | meeting_id  |
    | Meeting123  |
@add_chemical_edge_volumes
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters a designed volume of "<designed_volume>" liters
  And the user clicks on the "Save" button
  Then the chemical should be added successfully

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | 15%                  | 0               |
    | Acid          | 15%                  | 10000           |
@validate_delivery_record_creation
Scenario Outline: Chemical Delivery Record Creation with Maximum Quantity
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<po>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<bol>"
  And the user enters a received quantity of "<quantity>" liters
  And the user clicks on the "Save" button
  Then the delivery record is saved successfully

  Examples:
    | vendor         | po        | chemical_type | bol       | quantity |
    | abcd pvt.ltd   | PO12345  | Chemical A    | BOL12345  | 10000    |
@invalid_chemical_volume
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters an invalid designed volume "<designed_volume>"
  And the user clicks on the "Save" button
  Then an error message is displayed
  And the chemical is not added to the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Slickwater    | 20%                  | 10000 liters    |
@validate_workflow
Scenario Outline: Chemical, Proppant, Email Setup for Job Stages
  Given the user navigates to the Chemical Setup screen
  When the user adds a chemical with name "<chemical_name>" and quantity "<chemical_quantity>"
  And the user saves the chemical
  Then the user should be on the Chemical Setup screen
  And the chemical should be added successfully
  And the chemical should be saved without errors
  Given the user navigates to the Proppant Setup screen
  When the user adds a proppant with name "<proppant_name>" and quantity "<proppant_quantity>"
  And the user saves the proppant
  Then the user should be on the Proppant Setup screen
  And the proppant should be added successfully
  And the proppant should be saved without errors
  Given the user navigates to the Email Setup screen
  When the user adds a vendor with name "<vendor_name>" and email "<vendor_email>"
  And the user saves the vendor
  Then the vendor should be added and saved without errors

  Examples:
    | chemical_name       | chemical_quantity | proppant_name       | proppant_quantity | vendor_name     | vendor_email        |
    | Hydrochloric Acid  | 1000              | Ceramic Proppant    | 500               | ABC Chemicals    | vendor@abc.com      |
@duplicate-recipient
Scenario Outline: Chemical Vendor Email Setup with Duplicate Recipient
  Given the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters a valid PO number "<PO_number>"
  And the user enters a valid email address "<email>"
  When the user clicks on the "Save" button
  And the user clicks on the "Add Vendor" button again
  And the user enters the same email address "<email>" 
  And the user clicks "Save"
  Then an error message is displayed for duplicate email address

  Examples:
    | PO_number | email               |
    | PO12345   | vendor@example.com  |
@create_delivery_record_edge_values
Scenario Outline: Chemical Delivery Setup for Edge Quantity Values
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL_number>"
  And the user enters a received quantity of <received_quantity> liters
  And the user clicks on the "Save" button
  Then the delivery record is saved successfully

  Examples:
    | vendor              | PO                | chemical_type         | BOL_number  | received_quantity |
    | valid_vendor_name   | valid_po_number   | valid_chemical_type   | BOL12345    | 0                 |
@valid_chemical_combination
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration of "<design_concentration>"
  And the user enters a valid designed volume of "<designed_volume>"
  And the user clicks on the "Save" button
  Then the user should see that the chemical is added successfully

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | 0%                   | 1 liter         |
    | Acid          | 100%                 | 500 liters      |
@validate_proppant_addition
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Proppant Setup screen
  When the user clicks on the "Add Proppant" button
  And the user selects "<proppant_name>" from the dropdown
  And the user enters a total design volume of "<total_design_volume>" lbs
  And the user clicks on the "Save" button
  Then the proppant should be added successfully

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | 0                   |
    | Proppant A    | 5000                |

@validate_all_proppants_in_list
Scenario Outline: Verify all added proppants appear in the list
  Given the user has added the proppants
  Then all added proppants should appear in the list
@invalid_email_vendor
Scenario Outline: Verify Error Message for Invalid Email Format
  When the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters "<po_number>"
  And the user enters "<email>"
  And the user clicks on the "Save" button
  Then the user should see an error message
  And the vendor should not be added to the list

  Examples:
    | po_number | email         |
    | PO12345   | vendor@.com   |
@valid_delivery_record
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL number>"
  And the user enters a received quantity of "<received quantity>" liters
  And the user clicks on the "Save" button
  Then the delivery record should be saved successfully

  Examples:
    | vendor         | PO      | chemical type  | BOL number | received quantity |
    | Vendor A      | PO123   | Chemical Type 1 | BOL12345   | 0                 |
    | Vendor B      | PO456   | Chemical Type 2 | BOL12345   | 0                 |
@add_chemical
Scenario Outline: Add and Validate Chemicals in Chemical Setup
  When I add a chemical with values "<chemical_name>", "<concentration>", "<quantity>"
  And I save the chemical
  And I refresh the Chemical Setup screen
  And I locate the added chemical in the list
  Then the displayed values match the entered values
  And I add a chemical with values "<second_chemical_name>", "<second_concentration>", "<second_quantity>"
  And I save the second chemical
  And I refresh the Chemical Setup screen
  And I locate the second added chemical in the list
  Then all values are correct for both chemicals

  Examples:
    | chemical_name | concentration | quantity   | second_chemical_name | second_concentration | second_quantity |
    | Acid          | 15%           | 1000 liters| Slickwater           | 20%                  | 500 liters      |
@validate_maximum_chemicals
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters a valid designed volume "<designed_volume>"
  And the user clicks on the "Save" button
  Then the user should see that all added chemicals appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume  |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
    | Acid          | 15%                  | 1000 liters      |
@empty_recipient_error
Scenario Outline: Chemical Vendor Email Configuration with Empty Recipient
  When the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters a valid PO number "<po_number>"
  And the user leaves the email address field empty
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the vendor should not be added to the list

  Examples:
    | po_number  |
    | PO12345   |
@add_slickwater
Scenario Outline: Add Slickwater to Chemical Setup
  When I click on the "Add Chemical" button
  And I select "<chemical_name>" from the chemical name dropdown
  And I enter a valid design concentration "<design_concentration>"
  And I enter a valid designed volume "<designed_volume>"
  And I click on the "Save" button
  And I refresh the Chemical Setup screen
  Then Slickwater should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Slickwater    | 20%                  | 500 liters      |
@valid_vendor_addition
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters a valid PO number "<po_number>"
  And the user enters a valid email address "<email>"
  And the user clicks on the "Save" button
  And the user refreshes the Email Setup screen
  Then the added Chemical vendor should appear in the list

  Examples:
    | po_number | email                |
    | PO12345   | vendor@example.com   |
@validate_setup_navigation
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user navigates to the Jobs section
  When the user selects a Job from the list
  And the user chooses a Well associated with the Job
  And the user selects a Stage for the Job
  And the user clicks on the Chemical Setup option
  Then the Chemical Setup screen should load successfully
  And the user clicks on the Proppant Setup option
  Then the Proppant Setup screen should load successfully
  And the user clicks on the Email Setup option
  Then the Email Setup screen should load successfully

  Examples:
    | Job      | Well       | Stage    |
    | Job1     | WellA     | Stage1   |
    | Job2     | WellB     | Stage2   |
@valid-add-proppant
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Proppant" button
  And the user selects "<proppant_name>" from the dropdown
  And the user enters "<total_design_volume>" lbs as the total design volume
  And the user clicks on the "Save" button
  And the user repeats the process for three additional Proppants
  And the user refreshes the Proppant Setup screen
  Then all added Proppants should appear in the list

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | 1000                |
    | Proppant B    | 2000                |
    | Proppant C    | 3000                |
    | Proppant D    | 4000                |
@add_acid_chemical
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration of "<design_concentration>"
  And the user enters a valid designed volume of "<designed_volume>"
  And the user clicks on the "Save" button
  And the user refreshes the Chemical Setup screen
  Then the added acid should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | 15%                  | 1000 liters     |
@update_meeting_id
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user locates the "Others" section
  When the user clicks on the Meeting ID field
  And the user enters a valid Meeting ID "<meeting_id>"
  And the user clicks on the "Save" button
  And the user refreshes the Email Setup screen
  Then the updated Meeting ID is displayed correctly
  And no validation errors occur

  Examples:
    | meeting_id |
    | Meeting123 |
@validate_email_recipients
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user locates the Email Address section
  When the user clicks on the first email address field
  And the user enters "<first_email_address>"
  And the user clicks on the second email address field
  And the user enters "<second_email_address>"
  And the user clicks on the "Save" button
  Then the changes are saved successfully
  And the Email Setup screen refreshes without errors

  Examples:
    | first_email_address        | second_email_address       |
    | recipient1@example.com     | recipient2@example.com     |
@validate_add_linear_gel
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters "<design_concentration>" as the design concentration
  And the user enters "<designed_volume>" as the designed volume
  And the user clicks on the "Save" button
  And the user refreshes the Chemical Setup screen
  Then the added "<chemical_name>" should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Linear Gel    | 25%                  | 800 liters      |
@accessibility_checks
Scenario Outline: Validate Accessibility for Setup Screens
  When I navigate to the "<setup_screen>" screen
  And I use keyboard navigation to focus on the first input field
  Then I verify that the input field has an accessible label
  And I use the Tab key to navigate through all fields
  And I check for ARIA roles in the HTML elements
  Then I should pass all accessibility checks for the "<setup_screen>" screen

  Examples:
    | setup_screen  |
    | Chemical      |
    | Proppant      |
    | Email         |
@add_diverters
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Chemical Setup screen
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration of "<design_concentration>"
  And the user enters a valid designed volume of "<designed_volume>"
  And the user clicks on the "Save" button
  And the user refreshes the Chemical Setup screen
  Then the added Diverters should appear in the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Diverters     | 10%                  | 300 liters      |
@proppant_empty_name
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Proppant" button
  And the user leaves the proppant name field empty
  And the user enters "<total_design_volume>"
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the proppant should not be added to the list
  And the form should remain on the Proppant Setup screen

  Examples:
    | total_design_volume |
    | 1000 lbs           |
@validate_proppant_setup
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I add a proppant with specific values "<proppant_name>", "<proppant_weight>"
  And I save the proppant
  And I refresh the Proppant Setup screen
  And I locate the added proppant in the list
  Then the displayed values for "<proppant_name>" match the entered values
  When I add a proppant with specific values "<second_proppant_name>", "<second_proppant_weight>"
  And I save the proppant
  And I refresh the Proppant Setup screen
  And I locate the added proppant in the list
  Then the displayed values for "<second_proppant_name>" match the entered values
  Then all values are correct for both proppants

  Examples:
    | proppant_name | proppant_weight | second_proppant_name | second_proppant_weight |
    | Proppant A    | 1000 lbs       | Proppant B          | 1500 lbs               |
@validate_email_addresses
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user adds a vendor with email "<email>"
  When the user saves the vendor
  And the user refreshes the Email Setup screen
  Then the user locates the vendor in the list
  And the displayed email address matches "<email>"

  Examples:
    | email                |
    | vendor@example.com   |
    | vendor2@example.com  |
@error_message_empty_bol
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<po>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user leaves the BOL number field empty
  And the user enters "<received_quantity>" as the received quantity
  And the user clicks on the "Save" button
  Then an error message is displayed
  And the delivery record is not created

  Examples:
    | vendor      | po       | chemical_type | received_quantity |
    | Vendor A   | PO001   | Chemical X    | 500               |
    | Vendor B   | PO002   | Chemical Y    | 500               |
@invalid_chemical_volume
Scenario Outline: Chemical Setup with Exceeding Volume
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters an invalid designed volume "<designed_volume>"
  And the user clicks on the "Save" button
  Then the user should see an error message
  And the chemical should not be added to the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Slickwater    | 20%                  | 10000 liters    |
@invalid_received_quantity
Scenario Outline: Chemical Delivery Record Creation with Invalid Received Quantity
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL>"
  And the user enters an invalid received quantity "<received quantity>"
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the delivery record is not created

  Examples:
    | vendor        | PO       | chemical type | BOL        | received quantity |
    | abcd pvt.ltd | PO12345  | Chemical A    | BOL12345   | -100              |
@invalid_proppant_volume
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Proppant" button
  And the user selects "<proppant_name>" from the dropdown
  And the user enters an invalid total design volume "<total_design_volume>"
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the proppant should not be added to the list
  And the form should remain on the Proppant Setup screen

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | -500                |
@delivery_record_creation
Scenario Outline: Create Delivery Record for Chemical
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL_number>"
  And the user enters a valid received quantity "<received_quantity>"
  And the user clicks on the "Save" button
  Then the delivery record is saved successfully

  Examples:
    | vendor        | PO       | chemical_type         | BOL_number  | received_quantity |
    | vendor_name   | PO12345  | chemical_type_name    | BOL12345    | 500               |
@duplicate_email_error
Scenario Outline: Chemical Vendor Email Configuration with Duplicate Email
  When the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters a valid PO number "<po_number>"
  And the user enters a valid email address "<email>"
  And the user clicks the "Save" button
  When the user clicks on the "Add Vendor" button again
  And the user enters the same email address "<email>"
  And the user clicks the "Save" button
  Then an error message is displayed for the duplicate email address

  Examples:
    | po_number | email                |
    | PO12345   | vendor@example.com   |
@valid_chemical_addition
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Chemical Setup screen
  When the user clicks on the "Add Chemical" button
  And the user selects "Acid" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters a valid designed volume "<designed_volume>"
  And the user clicks on the "Save" button
  Then the user should see all added chemicals appear in the list

  Examples:
    | design_concentration | designed_volume |
    | 15%                  | 1000 liters     |
@error_message
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user leaves the chemical name field empty
  And the user enters a valid design concentration of "<design_concentration>"
  And the user enters a valid designed volume of "<designed_volume>"
  And the user clicks on the "Save" button
  Then an error message should be displayed
  And the chemical should not be added to the list

  Examples:
    | design_concentration | designed_volume |
    | 15%                  | 1000 liters     |
@invalid_email_format
Scenario Outline: Chemical Vendor Addition with Invalid Email
  When the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters "<po_number>"
  And the user enters "<email>"
  And the user clicks on the "Save" button
  Then an error message is displayed
  And the vendor is not added to the list

  Examples:
    | po_number | email          |
    | PO12345   | vendor@.com    |
@add_delivery_record
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL_number>"
  And the user enters a received quantity of "<received_quantity>" liters
  And the user clicks on the "Save" button
  Then the delivery record is saved successfully

  Examples:
    | vendor              | PO                | chemical_type         | BOL_number | received_quantity |
    | valid_vendor_name   | valid_po_number   | valid_chemical_type   | BOL12345   | 0                 |
@empty_recipient_error
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Vendor" button
  And the user selects "Chemical Vendor" from the vendor type dropdown
  And the user enters a valid PO number "<po_number>"
  And the user leaves the email address field empty
  And the user clicks on the "Save" button
  Then the user should see an error message
  And the vendor should not be added to the list

  Examples:
    | po_number  |
    | PO12345    |
@validate_setup_workflow
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I add a chemical with name "<chemical_name>" and quantity "<chemical_quantity>"
  Then the chemical should be added successfully
  And the chemical should be saved without errors
  When I navigate to the Proppant Setup screen
  And I add a proppant with name "<proppant_name>" and quantity "<proppant_quantity>"
  Then the proppant should be added successfully
  And the proppant should be saved without errors
  When I navigate to the Email Setup screen
  And I add a vendor with name "<vendor_name>" and email "<vendor_email>"
  Then the vendor should be added and saved without errors

  Examples:
    | chemical_name        | chemical_quantity | proppant_name        | proppant_quantity | vendor_name      | vendor_email         |
    | Hydrochloric Acid   | 1000              | Ceramic Proppant     | 500               | ABC Chemicals    | vendor@abc.com       |
@valid_chemical_addition
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration of "<design_concentration>"
  And the user enters a valid designed volume of "<designed_volume>"
  And the user clicks on the "Save" button
  Then the user should see that the chemical is added successfully

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | 0%                   | 1 liter         |
    | Acid          | 100%                 | 500 liters      |
@validate_buttons
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I click on the "Add Chemical" button
  And I fill in "<chemical name>", "<chemical type>", "<quantity>", "<supplier>"
  And I click "Save"
  Then the chemical is saved successfully
  When I click on the "Add Chemical" button again
  And I fill in "<chemical name>", "<chemical type>", "<quantity>", "<supplier>"
  And I click "Save & New"
  Then the new chemical entry is created and the form is reset
  And the user navigates to the Proppant Setup screen
  And I click on the "Save" button after adding a proppant
  Then the proppant is saved successfully

  Examples:
    | chemical name | chemical type | quantity | supplier |
    | ChemicalA     | Type1         | 100      | SupplierX|
    | ChemicalB     | Type2         | 200      | SupplierY|
@valid_chemical_setup_edge_volumes
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters a valid design concentration "<design_concentration>"
  And the user enters a designed volume of "<designed_volume>"
  And the user clicks on the "Save" button
  Then the chemical should be added successfully

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | 15%                  | 0 liters        |
    | Acid          | 15%                  | 10000 liters    |
@add_chemical
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I add a chemical with specific values "<chemical_name>", "<concentration>", "<volume>"
  Then the chemical should be saved successfully
  When I refresh the Chemical Setup screen
  Then the added chemical should be located in the list
  Then the displayed values for "<chemical_name>" should match the entered values
  
  Examples:
    | chemical_name | concentration | volume      |
    | Acid          | 15%           | 1000 liters |
    | Slickwater    | 20%           | 500 liters  |
@validate_proppant_edge_volume
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Proppant" button
  And the user selects "<proppant_name>" from the dropdown
  And the user enters a total design volume of "<total_design_volume>"
  And the user clicks on the "Save" button
  Then the proppant should be added successfully

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | 0                   |
    | Proppant A    | 5000                |
  
@verify_proppants_list
Scenario Outline: Verify all added proppants appear in the list
  Then all added proppants should appear in the list

  Examples:
    |          |
    |          |
@invalid_design_concentration
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Chemical" button
  And the user selects "<chemical_name>" from the chemical name dropdown
  And the user enters "<design_concentration>"
  And the user enters "<designed_volume>"
  And the user clicks on the "Save" button
  Then an error message is displayed
  And the chemical is not added to the list

  Examples:
    | chemical_name | design_concentration | designed_volume |
    | Acid          | -5%                  | 1000 liters     |
@validate_proppant_combinations
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user clicks on the "Add Proppant" button
  When the user selects "<proppant_name>" from the dropdown
  And the user enters a total design volume of "<total_volume>" lbs
  And the user clicks on the "Save" button
  Then the proppant should be added successfully

  Examples:
    | proppant_name | total_volume |
    | Proppant A    | 0            |
    | Proppant A    | 5000         |

@validate_added_proppants
Scenario Outline: Verify all added proppants appear in the list
  Then all added proppants should appear in the list

  Examples:
    | proppant_name |
    | Proppant A    |
@create_delivery_record_zero_quantity
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<PO>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<BOL_number>"
  And the user enters a received quantity of "<received_quantity>" liters
  And the user clicks on the "Save" button
  Then the delivery record is saved successfully

  Examples:
    | vendor      | PO        | chemical_type   | BOL_number | received_quantity |
    | Vendor A   | PO1234   | Chemical Type A | BOL12345   | 0                 |
    | Vendor B   | PO5678   | Chemical Type B | BOL12345   | 0                 |
@validate_chemical_proppant_persistence
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  Given the user is on the Chemical Setup screen
  When the user adds a chemical and saves it
  And the user refreshes the Chemical Setup screen
  Then the added chemical is still present in the list
  Given the user is on the Proppant Setup screen
  When the user adds a proppant and saves it
  And the user refreshes the Proppant Setup screen
  Then the added proppant is still present in the list

  Examples:
    |     |
    |     |
@max_proppant_addition
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When I click on the "Add Proppant" button
  And I select "<proppant_name>" from the dropdown
  And I enter "<total_design_volume>"
  And I click on the "Save" button
  And I repeat adding proppants up to the maximum limit
  And I refresh the Proppant Setup screen
  Then all added proppants should appear in the list

  Examples:
    | proppant_name | total_design_volume |
    | Proppant A    | 1000 lbs           |
@create_delivery_record
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the "Add Delivery Record" button
  And the user selects "<vendor>" from the vendor dropdown
  And the user selects "<po>" from the PO dropdown
  And the user selects "<chemical_type>" from the chemical type dropdown
  And the user enters a valid BOL number "<bol_number>"
  And the user enters a received quantity of "<received_quantity>" liters
  And the user clicks on the "Save" button
  Then the delivery record should be saved successfully

  Examples:
    | vendor          | po       | chemical_type | bol_number | received_quantity |
    | abcd pvt.ltd   | PO12345  | Chemical A    | BOL12345   | 10000             |
@validate_dropdowns
Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
  When the user clicks on the chemical name dropdown
  Then all expected chemical names are displayed
  Given the user is on the Proppant Setup screen
  When the user clicks on the proppant name dropdown
  Then all expected proppant names are displayed
  Given the user is on the Email Setup screen
  When the user clicks on the vendor type dropdown
  Then the vendor type dropdown loads correctly

  Examples:
    |   |
    |   |
