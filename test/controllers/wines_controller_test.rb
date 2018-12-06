require 'test_helper'

class WinesControllerTest < ActionDispatch::IntegrationTest

  # Assign a wine to instance variable
  setup do
    @wine = wines(:one)
  end

  # Get the index of a given wine
  test "should get index" do
    get wines_url
    assert_response :success
  end

  # Get a new wine
  test "should get new" do
    get new_wine_url
    assert_response :success
  end

  # Create a new wine
  test "should create wine" do
    assert_difference('Wine.count') do
      post wines_url, params: { wine: { category: @wine.category, description: @wine.description, name: @wine.name } }
    end

    assert_redirected_to wine_url(Wine.last)
  end

  # Get a wine for view
  test "should show wine" do
    get wine_url(@wine)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_url(@wine)
    assert_response :success
  end

  # Update a wine with given parameters
  test "should update wine" do
    patch wine_url(@wine), params: { wine: { category: @wine.category, description: @wine.description, name: @wine.name } }
    assert_redirected_to wine_url(@wine)
  end

  # Delete a given wine
  test "should destroy wine" do
    assert_difference('Wine.count', -1) do
      delete wine_url(@wine)
    end

    assert_redirected_to wines_url
  end
end
