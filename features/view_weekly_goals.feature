Feature: View goals for week
  As a goal keeper
  I would like to see my goals for the week to gauge my progress towards completing them now and over time. 

  Scenario: Home page should be current week's list. 

    Given I go to the home page
    Then I should be on "the current list's page" 

    Then I should see "the current week"
    And the goals for the week should be listed below
    And the id should not display
    And A title and description for each goal should display
     
	
