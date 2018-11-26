require "application_system_test_case"

class MaindishesTest < ApplicationSystemTestCase
  setup do
    @maindish = maindishes(:one)
  end

  test "visiting the index" do
    visit maindishes_url
    assert_selector "h1", text: "Maindishes"
  end

  test "creating a Maindish" do
    visit maindishes_url
    click_on "New Maindish"

    fill_in "Category", with: @maindish.category
    fill_in "Description", with: @maindish.description
    fill_in "Name", with: @maindish.name
    click_on "Create Maindish"

    assert_text "Maindish was successfully created"
    click_on "Back"
  end

  test "updating a Maindish" do
    visit maindishes_url
    click_on "Edit", match: :first

    fill_in "Category", with: @maindish.category
    fill_in "Description", with: @maindish.description
    fill_in "Name", with: @maindish.name
    click_on "Update Maindish"

    assert_text "Maindish was successfully updated"
    click_on "Back"
  end

  test "destroying a Maindish" do
    visit maindishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maindish was successfully destroyed"
  end
end
