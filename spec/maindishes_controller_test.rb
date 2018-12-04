require 'test_helper'

class MaindishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maindish = maindishes(:one)
  end

  test "should get index" do
    get maindishes_url
    assert_response :success
  end

  test "should get new" do
    get new_maindish_url
    assert_response :success
  end

  test "should create maindish" do
    assert_difference('Maindish.count') do
      post maindishes_url, params: { maindish: { category: @maindish.category, description: @maindish.description, name: @maindish.name } }
    end

    assert_redirected_to maindish_url(Maindish.last)
  end

  test "should show maindish" do
    get maindish_url(@maindish)
    assert_response :success
  end

  test "should get edit" do
    get edit_maindish_url(@maindish)
    assert_response :success
  end

  test "should update maindish" do
    patch maindish_url(@maindish), params: { maindish: { category: @maindish.category, description: @maindish.description, name: @maindish.name } }
    assert_redirected_to maindish_url(@maindish)
  end

  test "should destroy maindish" do
    assert_difference('Maindish.count', -1) do
      delete maindish_url(@maindish)
    end

    assert_redirected_to maindishes_url
  end
end
