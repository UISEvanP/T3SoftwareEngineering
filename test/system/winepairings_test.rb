require "application_system_test_case"

class WinepairingsTest < ApplicationSystemTestCase
  setup do
    @winepairing = winepairings(:one)
  end

  test "visiting the index" do
    visit winepairings_url
    assert_selector "h1", text: "Winepairings"
  end

  test "creating a Winepairing" do
    visit winepairings_url
    click_on "New Winepairing"

    fill_in "Beer", with: @winepairing.beer_id
    fill_in "Maindish", with: @winepairing.maindish_id
    fill_in "Weight", with: @winepairing.weight
    click_on "Create Winepairing"

    assert_text "Winepairing was successfully created"
    click_on "Back"
  end

  test "updating a Winepairing" do
    visit winepairings_url
    click_on "Edit", match: :first

    fill_in "Beer", with: @winepairing.beer_id
    fill_in "Maindish", with: @winepairing.maindish_id
    fill_in "Weight", with: @winepairing.weight
    click_on "Update Winepairing"

    assert_text "Winepairing was successfully updated"
    click_on "Back"
  end

  test "destroying a Winepairing" do
    visit winepairings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Winepairing was successfully destroyed"
  end
end
