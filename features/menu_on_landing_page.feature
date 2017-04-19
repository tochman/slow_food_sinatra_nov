Feature: View menu on landing page
  As a potential customer
  In order to be able to choose a tasty dish
  I would like to see a selection of dishes as soon as I visit the site.

  Background:
    Given the following dishes exist
      | name      | price |
      | Hamburger | 20    |
      | Kebab     | 30    |

  Scenario: Visitor is presented with a menu on landing page
    Given I visit the site
    Then I should see "Our Menu"
    And I should see "Hamburger"
    And I should see "Kebab"
    Then show me the page
