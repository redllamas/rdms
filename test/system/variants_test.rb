require "application_system_test_case"

class VariantsTest < ApplicationSystemTestCase
  setup do
    @variant = variants(:one)
  end

  test "visiting the index" do
    visit variants_url
    assert_selector "h1", text: "Variants"
  end

  test "should create variant" do
    visit variants_url
    click_on "New variant"

    fill_in "Body material", with: @variant.body_material
    fill_in "Product", with: @variant.product_id
    fill_in "Size mm", with: @variant.size_mm
    click_on "Create Variant"

    assert_text "Variant was successfully created"
    click_on "Back"
  end

  test "should update Variant" do
    visit variant_url(@variant)
    click_on "Edit this variant", match: :first

    fill_in "Body material", with: @variant.body_material
    fill_in "Product", with: @variant.product_id
    fill_in "Size mm", with: @variant.size_mm
    click_on "Update Variant"

    assert_text "Variant was successfully updated"
    click_on "Back"
  end

  test "should destroy Variant" do
    visit variant_url(@variant)
    accept_confirm { click_on "Destroy this variant", match: :first }

    assert_text "Variant was successfully destroyed"
  end
end
