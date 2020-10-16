require 'test_helper'

class PhoneNumberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
      setup do
    @phone_number = phone_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone_numbers" do
    assert_difference('phone_numbers.count') do
      post :create, phone_numbers: { number: @phone_number.number, country: @phone_number.country, isMobile: @phone_number.isMobile }
    end

    assert_redirected_to phone_numbers_path(assigns(:phone_numbers))
  end

  test "should show phone_numbers" do
    get :show, id: @phone_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone_number
    assert_response :success
  end

  test "should update phone_numbers" do
    patch :update, id: @phone_number, phone_numbers: { number: @phone_number.number, country: @phone_number.country, isMobile: @phone_number.isMobile }
    assert_redirected_to phone_numbers_path(assigns(:phone_numbers))
  end

  test "should destroy phone_numbers" do
    assert_difference('phone_numbers.count', -1) do
      delete :destroy, id: @phone_number
    end

    assert_redirected_to phone_numbers_path
  end
end
