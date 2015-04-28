require 'test_helper'

class WeeklyGoalsControllerTest < ActionController::TestCase
  setup do
    @weekly_goal = weekly_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekly_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekly_goal" do
    assert_difference('WeeklyGoal.count') do
      post :create, weekly_goal: { completed: @weekly_goal.completed, description: @weekly_goal.description, title: @weekly_goal.title }
    end

    assert_redirected_to weekly_goal_path(assigns(:weekly_goal))
  end

  test "should show weekly_goal" do
    get :show, id: @weekly_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekly_goal
    assert_response :success
  end

  test "should update weekly_goal" do
    patch :update, id: @weekly_goal, weekly_goal: { completed: @weekly_goal.completed, description: @weekly_goal.description, title: @weekly_goal.title }
    assert_redirected_to weekly_goal_path(assigns(:weekly_goal))
  end

  test "should destroy weekly_goal" do
    assert_difference('WeeklyGoal.count', -1) do
      delete :destroy, id: @weekly_goal
    end

    assert_redirected_to weekly_goals_path
  end
end
