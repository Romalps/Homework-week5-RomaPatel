Feature: Demo NopCommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When user type URL https://demo.nopcommerce.com
    And  user click on Enter button
    Then user is on given URL

  Scenario: verify that user can navigate to Books category
    When   User is on given URL
    And    click on Books tab on top menu
    Then user is navigated to Books category page

  Scenario: verify that user can see Books Category page with Filters and List of products
    When user is on given URL
    And  click on Books tan on top menu
    And check Filters and List Tab
    Then Books category page is displayed with Filters and List tabs

  Scenario: Verify that user can see 'Sort by' filter on Book category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Sort by' filter is present
    Then  'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Display' filter is present
    Then  'Display' filter is available on Book category page

  Scenario: Verify that user can see 'Grid' tab on Book category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book category page
    Given User is on Book Category page
    When  User is on Book Category page
    And   check 'List' tab is present
    Then  'List' tab is available on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Click on 'Sort by' filter
    And     check that 'Name: A to Z' selection is present
    Then    'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is first option in 'Sort by' filter
    Given   User is on Books category page
    When    User is on Books Category page
    And    Click on 'Sort by' filter
    And    Check that 'Name: A to Z' is first in order
    Then   'Name: A to Z' is first option in order

  Scenario: Verify that user can see 'Name: A to Z' filter is functioning as expected
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Click on 'Sort by' filter
    And     Select 'Name: A to Z' filter
    Then    All products are displayed in alphabetical order





