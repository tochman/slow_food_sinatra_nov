Feature:
  As a User
  In order to access the system
  I want to be authenticated by submitting my credentials

  Background:
    Given that there are no users in the system
    And the following users exist
      | username | password    | email                  |
      | admin    | password    | admin@random.com       |
      | thomas   | my_password | thomas@craftacademy.se |

  Scenario: User provides the right combination of user name and password
    When I visit the site
    And I click "Log In"
    And I fill in "Username" with "admin"
    And I fill in "Password" with "password"
    And I click the "Log In" button
    Then show me the page
    Then I should see "Logged in as admin"
    And I should see "Successfully logged in admin"

  Scenario: User inputs the wrong password
    When I visit the site
    And I click "Log In"
    Given I fill in "Username" with "admin"
    And I fill in "Password" with "wrong-password"
    And I click the "Log In" button
    Then I should see "The username and password combination"
