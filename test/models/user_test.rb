require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users" do
    assert_difference('users.count') do
      post :create, users: { codebyte: @user.codebyte, first_name: @user.firs_name, last_name: @user.last_name, job_title: @user.job_title, date_birth: @user.date_birth }
    end

    assert_redirected_to users_path(assigns(:users))
  end

  test "should show users" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update users" do
    patch :update, id: @user, users: { codebyte: @user.codebyte, first_name: @user.firs_name, last_name: @user.last_name, job_title: @user.job_title, date_birth: @user.date_birth}
    assert_redirected_to users_path(assigns(:users))
  end

  test "should destroy users" do
    assert_difference('users.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
