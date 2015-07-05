require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get Contact" do
    get :Contact
    assert_response :success
  end

  test "should get Administration" do
    get :Administration
    assert_response :success
  end

  test "should get Press" do
    get :Press
    assert_response :success
  end

end
