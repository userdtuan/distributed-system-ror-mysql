require "test_helper"

class StorageManagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storage_manage = storage_manages(:one)
  end

  test "should get index" do
    get storage_manages_url
    assert_response :success
  end

  test "should get new" do
    get new_storage_manage_url
    assert_response :success
  end

  test "should create storage_manage" do
    assert_difference("StorageManage.count") do
      post storage_manages_url, params: { storage_manage: { productid: @storage_manage.productid, quantity: @storage_manage.quantity, storageid: @storage_manage.storageid } }
    end

    assert_redirected_to storage_manage_url(StorageManage.last)
  end

  test "should show storage_manage" do
    get storage_manage_url(@storage_manage)
    assert_response :success
  end

  test "should get edit" do
    get edit_storage_manage_url(@storage_manage)
    assert_response :success
  end

  test "should update storage_manage" do
    patch storage_manage_url(@storage_manage), params: { storage_manage: { productid: @storage_manage.productid, quantity: @storage_manage.quantity, storageid: @storage_manage.storageid } }
    assert_redirected_to storage_manage_url(@storage_manage)
  end

  test "should destroy storage_manage" do
    assert_difference("StorageManage.count", -1) do
      delete storage_manage_url(@storage_manage)
    end

    assert_redirected_to storage_manages_url
  end
end
