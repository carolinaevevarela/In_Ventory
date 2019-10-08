require "application_system_test_case"

class GuideItemsTest < ApplicationSystemTestCase
  setup do
    @guide_item = guide_items(:one)
  end

  test "visiting the index" do
    visit guide_items_url
    assert_selector "h1", text: "Guide Items"
  end

  test "creating a Guide item" do
    visit guide_items_url
    click_on "New Guide Item"

    fill_in "Isbn", with: @guide_item.isbn
    fill_in "Pneto", with: @guide_item.pneto
    fill_in "Pvp", with: @guide_item.pvp
    fill_in "Quantity", with: @guide_item.quantity
    click_on "Create Guide item"

    assert_text "Guide item was successfully created"
    click_on "Back"
  end

  test "updating a Guide item" do
    visit guide_items_url
    click_on "Edit", match: :first

    fill_in "Isbn", with: @guide_item.isbn
    fill_in "Pneto", with: @guide_item.pneto
    fill_in "Pvp", with: @guide_item.pvp
    fill_in "Quantity", with: @guide_item.quantity
    click_on "Update Guide item"

    assert_text "Guide item was successfully updated"
    click_on "Back"
  end

  test "destroying a Guide item" do
    visit guide_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guide item was successfully destroyed"
  end
end
