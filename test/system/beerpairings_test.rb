require "application_system_test_case"

class BeerpairingsTest < ApplicationSystemTestCase
  setup do
    @beerpairing = beerpairings(:one)
  end

  test "visiting the index" do
    visit beerpairings_url
    assert_selector "h1", text: "Beerpairings"
  end

  test "creating a Beerpairing" do
    visit beerpairings_url
    click_on "New Beerpairing"

    fill_in "Beer", with: @beerpairing.beer_id
    fill_in "Maindish", with: @beerpairing.maindish_id
    fill_in "Weight", with: @beerpairing.weight
    click_on "Create Beerpairing"

    assert_text "Beerpairing was successfully created"
    click_on "Back"
  end

  test "updating a Beerpairing" do
    visit beerpairings_url
    click_on "Edit", match: :first

    fill_in "Beer", with: @beerpairing.beer_id
    fill_in "Maindish", with: @beerpairing.maindish_id
    fill_in "Weight", with: @beerpairing.weight
    click_on "Update Beerpairing"

    assert_text "Beerpairing was successfully updated"
    click_on "Back"
  end

  test "destroying a Beerpairing" do
    visit beerpairings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Beerpairing was successfully destroyed"
  end
end
