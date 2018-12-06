require 'test_helper'

class BeersControllerTest < ActionDispatch::IntegrationTest

  # Creates a reference to a beer
  setup do
    @beer = beers(:one)
  end

  # Retrieve the index of a given beer
  test "should get index" do
    get beers_url
    assert_response :success
  end

  # Retrieve a new beer
  test "should get new" do
    get new_beer_url
    assert_response :success
  end

  # Create a new beer with given parameters
  test "should create beer" do
    assert_difference('Beer.count') do
      post beers_url, params: { beer: { category: @beer.category, description: @beer.description, name: @beer.name } }
    end

    assert_redirected_to beer_url(Beer.last)
  end

  # Get a beer for view
  test "should show beer" do
    get beer_url(@beer)
    assert_response :success
  end

  # Edit a beer
  test "should get edit" do
    get edit_beer_url(@beer)
    assert_response :success
  end

  # Update a beer with a given edit
  test "should update beer" do
    patch beer_url(@beer), params: { beer: { category: @beer.category, description: @beer.description, name: @beer.name } }
    assert_redirected_to beer_url(@beer)
  end

  # Delete a beer
  test "should destroy beer" do
    assert_difference('Beer.count', -1) do
      delete beer_url(@beer)
    end

    assert_redirected_to beers_url
  end
end
