require 'test_helper'

class WinepairingsControllerTest < ActionDispatch::IntegrationTest

  # Set index variable to a winepairing
  setup do
    @winepairing = winepairings(:one)
  end

  # Get the index of a given winepairing
  test "should get index" do
    get winepairings_url
    assert_response :success
  end

  # Get a new wimepairing
  test "should get new" do
    get new_winepairing_url
    assert_response :success
  end

  # Create a new winepairing
  test "should create winepairing" do
    assert_difference('Winepairing.count') do
      post winepairings_url, params: { winepairing: { wine_id: @winepairing.wine_id, maindish_id: @winepairing.maindish_id, weight: @winepairing.weight } }
    end

    assert_redirected_to winepairing_url(Winepairing.last)
  end

  # Get a winepairing for view
  test "should show winepairing" do
    get winepairing_url(@winepairing)
    assert_response :success
  end

  # edit a wine pairing
  test "should get edit" do
    get edit_winepairing_url(@winepairing)
    assert_response :success
  end

  # Update a wine pairing with given parameters
  test "should update winepairing" do
    patch winepairing_url(@winepairing), params: { winepairing: { wine_id: @winepairing.wine_id, maindish_id: @winepairing.maindish_id, weight: @winepairing.weight } }
    assert_redirected_to winepairing_url(@winepairing)
  end

  # Delete a given wine pairing
  test "should destroy winepairing" do
    assert_difference('Winepairing.count', -1) do
      delete winepairing_url(@winepairing)
    end

    assert_redirected_to winepairings_url
  end
end
