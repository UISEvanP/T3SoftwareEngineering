require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get public_welcome_url
    assert_response :success
  end

  test "should get order" do
    get public_order_url
    assert_response :success
  end

  test "should get messagewaiter" do
    get public_messagewaiter_url
    assert_response :success
  end

end
