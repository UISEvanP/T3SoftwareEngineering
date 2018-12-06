require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest

  # The welcome page/method is accessable
  test "should get welcome" do
    get public_welcome_url
    assert_response :success
  end

  # The order page/method is accessable
  test "should get order" do
    get public_order_url
    assert_response :success
  end

  # The messagewaiter page/method is accessable 
  test "should get messagewaiter" do
    get public_messagewaiter_url
    assert_response :success
  end

end
