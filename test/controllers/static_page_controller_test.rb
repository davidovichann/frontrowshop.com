require 'test_helper'

class StaticPageControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
