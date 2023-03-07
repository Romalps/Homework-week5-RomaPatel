Feature: NopCommerce Registration
  As a User
    I want to check the Register functionality of NopCommerce

  Background: I am on NopCommerce registration page
      Given I open the google Chrome Browser
      When  I open the URL https://demo.nopcommerce.com/register
      Then  I am on NopCommerce Registration page

      Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
                When    I enter first name "<First Name>"
                And     I enter last name "<Last Name >"
                And     I enter Email address "<Email>"
                And     I enter password "<Password>"
                And     I enter confirm password "<Confirm Password>"
                And     Click in Register button
                Then    I can see an error message "<Error Message>"
                And     I am not able to register

            Examples:
                |First Name       |Last Name      |Email            |Password  |Confirm Password|Error Message                              |
                |""               |Bakshi         |bakshi@gmail.com |456897    |456897          | Please enter First Name                   |
                |Rohan            |""             |bakshi@gmail.com |456897    |456897          | Please enter Last Name                    |
                |Rohan            |Bakshi         |""               |456897    |456897          | Please enter valid Email                  |
                |Rohan            |Bakshi         |bakshi@gmail.com |""        |456897          | Password is required                      |
                |Rohan            |Bakshi         |bakshi@gmail.com |456897    |""              | confirm password is required              |
                |Rohan            |Bakshi         |bakshi@gmail.com |456897    |45689           | password and confirm password do not match|
                |Rohan            |Bakshi         |bakshi@gmail.com |45689     |""              | minimum 6 character password is required  |
                |Rohan            |""             |""               |""        |""              | Mandatory (*) field is required           |

        Scenario: I should be able to select any one radio button from Gender Label of your Personal Details section
          Given   I am on Gender label of your personal detail section
          When    I select "Male" radio button
          And     I select "Female" radio button
          Then    I am able to select any one of the radio button

        Scenario Outline: I should be able to select Day, Month and year from drop down list of Date of Birth field
            Given    I am on Date of Birth field of your personal detail section
            When     I select day "<Day>"
            And      I select month"<Month>"
            And      I select year "<Year>"
            Then     I am able to select Day, Month and Year from drop down list

          Examples:
                |Day|Month   |Year|
                |11 |November|1989|

        Scenario: I should be able to check and uncheck the newsletter box on Options section
            Given I am on Newsletter label on options section
            When  I click on Newsletter checkbox
            And   I again click on Newsletter checkbox
            Then  I was able to check and uncheck the box next to Newsletter label

        Scenario: I should be able to register with valid mandatory (*) field data on Registration page
            When  I enter First Name "Rohan"
            And   I enter last Name "Bakshi"
            And   I enter Email "bakshi@gmail.com"
            And   I enter Password "456897"
            And   I enter Confirm Password "456897"
            And   I click on Register button
            Then  I was able to register successfully

