require 'test_helper'

class GuideItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guide_item = guide_items(:one)
  end

  test "should get index" do
    get guide_items_url
    assert_response :success
  end

  test "should get new" do
    get new_guide_item_url
    assert_response :success
  end

  test "should create guide_item" do
    assert_difference('GuideItem.count') do
      post guide_items_url, params: { guide_item: { isbn: @guide_item.isbn, pneto: @guide_item.pneto, pvp: @guide_item.pvp, quantity: @guide_item.quantity } }
    end

    assert_redirected_to guide_item_url(GuideItem.last)
  end

  test "should show guide_item" do
    get guide_item_url(@guide_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_guide_item_url(@guide_item)
    assert_response :success
  end

  test "should update guide_item" do
    patch guide_item_url(@guide_item), params: { guide_item: { isbn: @guide_item.isbn, pneto: @guide_item.pneto, pvp: @guide_item.pvp, quantity: @guide_item.quantity } }
    assert_redirected_to guide_item_url(@guide_item)
  end

  test "should destroy guide_item" do
    assert_difference('GuideItem.count', -1) do
      delete guide_item_url(@guide_item)
    end

    assert_redirected_to guide_items_url
  end
end
