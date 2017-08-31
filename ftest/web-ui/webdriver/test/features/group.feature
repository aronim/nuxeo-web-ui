Feature: Group

  As an Administrator I can create, edit search for and delete groups.

  Background:
    Given I have the following groups
      | name      | label    |
      | managers  | Managers |
    Given I login as "Administrator"
    And I click the "administration" button
    And I can see the administration menu
    And I click "Users & Groups" in the administration menu
    And I can see the users and groups page

  Scenario: Create Groups
    When I click the new user/group button
    And I select group from the dropdown menu
    Then I can see the new group form
    And I can create a group with the following properties:
      | name       | value    |
      | groupName  | managers2 |
      | groupLabel | Managers2 |

  Scenario: Search Groups
    Then I can search for the following groups
      | name      | label    |
      | managers  | Managers |

  Scenario: Edit Groups
    Then I can edit the following groups
      | name      | newLabel       |
      | Managers  | Managers Group |

  Scenario: Delete Groups
    Then I can delete the following groups
      | name      | label    |
      | Managers  | Managers |
