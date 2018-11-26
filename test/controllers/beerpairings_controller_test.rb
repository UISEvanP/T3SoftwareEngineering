require 'test_helper'

class BeerpairingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beerpairing = beerpairings(:one)
  end

  test "should get index" do
    get beerpairings_url
    assert_response :success
  end

  test "should get new" do
    get new_beerpairing_url
    assert_response :success
  end

  test "should create beerpairing" do
    assert_difference('Beerpairing.count') do
      post beerpairings_url, params: { beerpairing: { beer_id: @beerpairing.beer_id, maindish_id: @beerpairing.maindish_id, weight: @beerpairing.weight } }
    end

    assert_redirected_to beerpairing_url(Beerpairing.last)
  end

  test "should show beerpairing" do
    get beerpairing_url(@beerpairing)
    assert_response :success
  end

  test "should get edit" do
    get edit_beerpairing_url(@beerpairing)
    assert_response :success
  end

  test "should update beerpairing" do
    patch beerpairing_url(@beerpairing), params: { beerpairing: { beer_id: @beerpairing.beer_id, maindish_id: @beerpairing.maindish_id, weight: @beerpairing.weight } }
    assert_redirected_to beerpairing_url(@beerpairing)
  end

  test "should destroy beerpairing" do
    assert_difference('Beerpairing.count', -1) do
      delete beerpairing_url(@beerpairing)
    end

    assert_redirected_to beerpairings_url
  end
end
