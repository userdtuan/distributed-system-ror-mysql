require "application_system_test_case"

class AuthorizedShopsTest < ApplicationSystemTestCase
  setup do
    @authorized_shop = authorized_shops(:one)
  end

  test "visiting the index" do
    visit authorized_shops_url
    assert_selector "h1", text: "Authorized shops"
  end

  test "should create authorized shop" do
    visit authorized_shops_url
    click_on "New authorized shop"

    fill_in "Address", with: @authorized_shop.address
    fill_in "Name", with: @authorized_shop.name
    fill_in "Owner name", with: @authorized_shop.owner_name
    fill_in "Product", with: @authorized_shop.product
    click_on "Create Authorized shop"

    assert_text "Authorized shop was successfully created"
    click_on "Back"
  end

  test "should update Authorized shop" do
    visit authorized_shop_url(@authorized_shop)
    click_on "Edit this authorized shop", match: :first

    fill_in "Address", with: @authorized_shop.address
    fill_in "Name", with: @authorized_shop.name
    fill_in "Owner name", with: @authorized_shop.owner_name
    fill_in "Product", with: @authorized_shop.product
    click_on "Update Authorized shop"

    assert_text "Authorized shop was successfully updated"
    click_on "Back"
  end

  test "should destroy Authorized shop" do
    visit authorized_shop_url(@authorized_shop)
    click_on "Destroy this authorized shop", match: :first

    assert_text "Authorized shop was successfully destroyed"
  end
end
