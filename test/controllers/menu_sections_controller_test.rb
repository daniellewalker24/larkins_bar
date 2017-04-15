require 'test_helper'

class MenuSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu_section = menu_sections(:one)
  end

  test "should get index" do
    get menu_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_section_url
    assert_response :success
  end

  test "should create menu_section" do
    assert_difference('MenuSection.count') do
      post menu_sections_url, params: { menu_section: { area: @menu_section.area, content: @menu_section.content } }
    end

    assert_redirected_to menu_section_url(MenuSection.last)
  end

  test "should show menu_section" do
    get menu_section_url(@menu_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_section_url(@menu_section)
    assert_response :success
  end

  test "should update menu_section" do
    patch menu_section_url(@menu_section), params: { menu_section: { area: @menu_section.area, content: @menu_section.content } }
    assert_redirected_to menu_section_url(@menu_section)
  end

  test "should destroy menu_section" do
    assert_difference('MenuSection.count', -1) do
      delete menu_section_url(@menu_section)
    end

    assert_redirected_to menu_sections_url
  end
end
