require "application_system_test_case"

class SubsubcategoriesTest < ApplicationSystemTestCase
  setup do
    @subsubcategory = subsubcategories(:one)
  end

  test "visiting the index" do
    visit subsubcategories_url
    assert_selector "h1", text: "Subsubcategories"
  end

  test "should create subsubcategory" do
    visit subsubcategories_url
    click_on "New subsubcategory"

    fill_in "Name", with: @subsubcategory.name
    fill_in "Subcategory", with: @subsubcategory.subcategory_id
    click_on "Create Subsubcategory"

    assert_text "Subsubcategory was successfully created"
    click_on "Back"
  end

  test "should update Subsubcategory" do
    visit subsubcategory_url(@subsubcategory)
    click_on "Edit this subsubcategory", match: :first

    fill_in "Name", with: @subsubcategory.name
    fill_in "Subcategory", with: @subsubcategory.subcategory_id
    click_on "Update Subsubcategory"

    assert_text "Subsubcategory was successfully updated"
    click_on "Back"
  end

  test "should destroy Subsubcategory" do
    visit subsubcategory_url(@subsubcategory)
    accept_confirm { click_on "Destroy this subsubcategory", match: :first }

    assert_text "Subsubcategory was successfully destroyed"
  end
end
