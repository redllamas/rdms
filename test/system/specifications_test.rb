require "application_system_test_case"

class SpecificationsTest < ApplicationSystemTestCase
  setup do
    @specification = specifications(:one)
  end

  test "visiting the index" do
    visit specifications_url
    assert_selector "h1", text: "Specifications"
  end

  test "should create specification" do
    visit specifications_url
    click_on "New specification"

    fill_in "Max ap", with: @specification.max_ap
    fill_in "Max at", with: @specification.max_at
    fill_in "Max dp", with: @specification.max_dp
    fill_in "Max op", with: @specification.max_op
    fill_in "Max ot", with: @specification.max_ot
    fill_in "Min op", with: @specification.min_op
    fill_in "Specs", with: @specification.specs
    fill_in "Variant", with: @specification.variant_id
    click_on "Create Specification"

    assert_text "Specification was successfully created"
    click_on "Back"
  end

  test "should update Specification" do
    visit specification_url(@specification)
    click_on "Edit this specification", match: :first

    fill_in "Max ap", with: @specification.max_ap
    fill_in "Max at", with: @specification.max_at
    fill_in "Max dp", with: @specification.max_dp
    fill_in "Max op", with: @specification.max_op
    fill_in "Max ot", with: @specification.max_ot
    fill_in "Min op", with: @specification.min_op
    fill_in "Specs", with: @specification.specs
    fill_in "Variant", with: @specification.variant_id
    click_on "Update Specification"

    assert_text "Specification was successfully updated"
    click_on "Back"
  end

  test "should destroy Specification" do
    visit specification_url(@specification)
    accept_confirm { click_on "Destroy this specification", match: :first }

    assert_text "Specification was successfully destroyed"
  end
end
