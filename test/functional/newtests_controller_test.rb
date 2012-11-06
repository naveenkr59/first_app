require 'test_helper'

class NewtestsControllerTest < ActionController::TestCase
  setup do
    @newtest = newtests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newtests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newtest" do
    assert_difference('Newtest.count') do
      post :create, :newtest => { :name => @newtest.name }
    end

    assert_redirected_to newtest_path(assigns(:newtest))
  end

  test "should show newtest" do
    get :show, :id => @newtest
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @newtest
    assert_response :success
  end

  test "should update newtest" do
    put :update, :id => @newtest, :newtest => { :name => @newtest.name }
    assert_redirected_to newtest_path(assigns(:newtest))
  end

  test "should destroy newtest" do
    assert_difference('Newtest.count', -1) do
      delete :destroy, :id => @newtest
    end

    assert_redirected_to newtests_path
  end
end
