require "application_system_test_case"

class ShippingManagesTest < ApplicationSystemTestCase
  setup do
    @shipping_manage = shipping_manages(:one)
  end

  test "visiting the index" do
    visit shipping_manages_url
    assert_selector "h1", text: "Shipping manages"
  end

  test "should create shipping manage" do
    visit shipping_manages_url
    click_on "New shipping manage"

    fill_in "Productid", with: @shipping_manage.productid
    fill_in "Quantity", with: @shipping_manage.quantity
    fill_in "Shippingid", with: @shipping_manage.shippingid
    click_on "Create Shipping manage"

    assert_text "Shipping manage was successfully created"
    click_on "Back"
  end

  test "should update Shipping manage" do
    visit shipping_manage_url(@shipping_manage)
    click_on "Edit this shipping manage", match: :first

    fill_in "Productid", with: @shipping_manage.productid
    fill_in "Quantity", with: @shipping_manage.quantity
    fill_in "Shippingid", with: @shipping_manage.shippingid
    click_on "Update Shipping manage"

    assert_text "Shipping manage was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipping manage" do
    visit shipping_manage_url(@shipping_manage)
    click_on "Destroy this shipping manage", match: :first

    assert_text "Shipping manage was successfully destroyed"
  end
end
