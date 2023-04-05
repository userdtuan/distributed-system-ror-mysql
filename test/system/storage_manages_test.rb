require "application_system_test_case"

class StorageManagesTest < ApplicationSystemTestCase
  setup do
    @storage_manage = storage_manages(:one)
  end

  test "visiting the index" do
    visit storage_manages_url
    assert_selector "h1", text: "Storage manages"
  end

  test "should create storage manage" do
    visit storage_manages_url
    click_on "New storage manage"

    fill_in "Productid", with: @storage_manage.productid
    fill_in "Quantity", with: @storage_manage.quantity
    fill_in "Storageid", with: @storage_manage.storageid
    click_on "Create Storage manage"

    assert_text "Storage manage was successfully created"
    click_on "Back"
  end

  test "should update Storage manage" do
    visit storage_manage_url(@storage_manage)
    click_on "Edit this storage manage", match: :first

    fill_in "Productid", with: @storage_manage.productid
    fill_in "Quantity", with: @storage_manage.quantity
    fill_in "Storageid", with: @storage_manage.storageid
    click_on "Update Storage manage"

    assert_text "Storage manage was successfully updated"
    click_on "Back"
  end

  test "should destroy Storage manage" do
    visit storage_manage_url(@storage_manage)
    click_on "Destroy this storage manage", match: :first

    assert_text "Storage manage was successfully destroyed"
  end
end
