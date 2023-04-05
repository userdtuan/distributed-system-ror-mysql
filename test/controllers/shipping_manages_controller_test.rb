require "test_helper"

class ShippingManagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipping_manage = shipping_manages(:one)
  end

  test "should get index" do
    get shipping_manages_url
    assert_response :success
  end

  test "should get new" do
    get new_shipping_manage_url
    assert_response :success
  end

  test "should create shipping_manage" do
    assert_difference("ShippingManage.count") do
      post shipping_manages_url, params: { shipping_manage: { productid: @shipping_manage.productid, quantity: @shipping_manage.quantity, shippingid: @shipping_manage.shippingid } }
    end

    assert_redirected_to shipping_manage_url(ShippingManage.last)
  end

  test "should show shipping_manage" do
    get shipping_manage_url(@shipping_manage)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipping_manage_url(@shipping_manage)
    assert_response :success
  end

  test "should update shipping_manage" do
    patch shipping_manage_url(@shipping_manage), params: { shipping_manage: { productid: @shipping_manage.productid, quantity: @shipping_manage.quantity, shippingid: @shipping_manage.shippingid } }
    assert_redirected_to shipping_manage_url(@shipping_manage)
  end

  test "should destroy shipping_manage" do
    assert_difference("ShippingManage.count", -1) do
      delete shipping_manage_url(@shipping_manage)
    end

    assert_redirected_to shipping_manages_url
  end
end
