require 'test_helper'

class WinepairingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winepairing = winepairings(:one)
  end

  test "should get index" do
    get winepairings_url
    assert_response :success
  end

  test "should get new" do
    get new_winepairing_url
    assert_response :success
  end

  test "should create winepairing" do
    assert_difference('Winepairing.count') do
      post winepairings_url, params: { winepairing: { beer_id: @winepairing.beer_id, maindish_id: @winepairing.maindish_id, weight: @winepairing.weight } }
    end

    assert_redirected_to winepairing_url(Winepairing.last)
  end

  test "should show winepairing" do
    get winepairing_url(@winepairing)
    assert_response :success
  end

  test "should get edit" do
    get edit_winepairing_url(@winepairing)
    assert_response :success
  end

  test "should update winepairing" do
    patch winepairing_url(@winepairing), params: { winepairing: { beer_id: @winepairing.beer_id, maindish_id: @winepairing.maindish_id, weight: @winepairing.weight } }
    assert_redirected_to winepairing_url(@winepairing)
  end

  test "should destroy winepairing" do
    assert_difference('Winepairing.count', -1) do
      delete winepairing_url(@winepairing)
    end

    assert_redirected_to winepairings_url
  end
end
