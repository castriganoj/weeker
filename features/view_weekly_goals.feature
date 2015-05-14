Feature: View goals for week
  As a goal keeper
  I would like to see my goals for the week to gauge my progress towards completing them now and over time. 

  Scenario: view features for the week

    Given I am on the home page
    And the current week date range should be in the header
    And the goals for the week should be listed below
    And the id should not display
    And A title and description for each goal should display
     
	 separate feature
   Scenario: Click row to edit goal
     Given I am on the home page
     And I click a goal row
     Then I should see that goal page rspec test?
    
	seperate
  Scenario: Outstanding Goals
	Given I am on the home page	
	And there are goals that have been incomplete for more than 1 week
	Then those goals should have a unique color
    
	seperate
  Scenario: View weekly lists in sidebar
	Given I am on the homepage
	I should see a section called sidebar
	And that section should include a list of weekly lists
    
  Scenario: 
