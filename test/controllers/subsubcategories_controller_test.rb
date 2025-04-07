require "test_helper"

class SubsubcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subsubcategory = subsubcategories(:one)
  end

  test "should get index" do
    get subsubcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_subsubcategory_url
    assert_response :success
  end

  test "should create subsubcategory" do
    assert_difference("Subsubcategory.count") do
      post subsubcategories_url, params: { subsubcategory: { name: @subsubcategory.name, subcategory_id: @subsubcategory.subcategory_id } }
    end

    assert_redirected_to subsubcategory_url(Subsubcategory.last)
  end

  test "should show subsubcategory" do
    get subsubcategory_url(@subsubcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_subsubcategory_url(@subsubcategory)
    assert_response :success
  end

  test "should update subsubcategory" do
    patch subsubcategory_url(@subsubcategory), params: { subsubcategory: { name: @subsubcategory.name, subcategory_id: @subsubcategory.subcategory_id } }
    assert_redirected_to subsubcategory_url(@subsubcategory)
  end

  test "should destroy subsubcategory" do
    assert_difference("Subsubcategory.count", -1) do
      delete subsubcategory_url(@subsubcategory)
    end

    assert_redirected_to subsubcategories_url
  end
end
