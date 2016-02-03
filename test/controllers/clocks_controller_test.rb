require 'test_helper'

class ClocksControllerTest < ActionController::TestCase
  setup do
    @clock = clocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clock" do
    assert_difference('Clock.count') do
      post :create, clock: { cost: @clock.cost, image: @clock.image, name: @clock.name, size: @clock.size }
    end

    assert_redirected_to clock_path(assigns(:clock))
  end

  test "should show clock" do
    get :show, id: @clock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clock
    assert_response :success
  end

  test "should update clock" do
    patch :update, id: @clock, clock: { cost: @clock.cost, image: @clock.image, name: @clock.name, size: @clock.size }
    assert_redirected_to clock_path(assigns(:clock))
  end

  test "should destroy clock" do
    assert_difference('Clock.count', -1) do
      delete :destroy, id: @clock
    end

    assert_redirected_to clocks_path
  end
end
