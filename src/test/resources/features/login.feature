Feature: Login functionality of SauceDemo

  Scenario: Successful login with valid credentials
    Given user is on the SauceDemo login page
    When user enters username "standard_user" and password "secret_sauce"
    And user clicks on login button
    Then user should be navigated to the products page

  Scenario Outline: Unsuccessful login with invalid credentials
    Given user is on the SauceDemo login page
    When user enters username "<username>" and password "<password>"
    And user clicks on login button
    Then user should see error message "<errorMessage>"

    Examples:
      | username        | password        | errorMessage                                                                |
      | locked_out_user | secret_sauce    | Epic sadface: Sorry, this user has been locked out.                       |
      | invalid_user    | wrong_password  | Epic sadface: Username and password do not match any user in this service|