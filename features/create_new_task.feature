Feature: Create new tasks
  In order to keep track of the things I need to do
  I want to be able to create a list of tasks.

  Scenario: I can get to the new task page from the home page
  Given I am on the home page
  When I click "New Task"
  Then I should see "Enter new task"

  Scenario:
  Given I am on the new task page
  When I fill in "task description" with "Buy Bread"
  And I click "Save"
  Then I should see "Task created successfully"
  And I should see "Buy Bread"
