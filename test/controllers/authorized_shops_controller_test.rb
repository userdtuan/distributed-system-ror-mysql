require "test_helper"

class AuthorizedShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorized_shop = authorized_shops(:one)
  end

  test "should get index" do
    get authorized_shops_url
    assert_response :success
  end

  test "should get new" do
    get new_authorized_shop_url
    assert_response :success
  end

  test "should create authorized_shop" do
    assert_difference("AuthorizedShop.count") do
      post authorized_shops_url, params: { authorized_shop: { address: @authorized_shop.address, name: @authorized_shop.name, owner_name: @authorized_shop.owner_name, product: @authorized_shop.product } }
    end

    assert_redirected_to authorized_shop_url(AuthorizedShop.last)
  end

  test "should show authorized_shop" do
    get authorized_shop_url(@authorized_shop)
    assert_response :success
  end

  test "should get edit" do
    get edit_authorized_shop_url(@authorized_shop)
    assert_response :success
  end

  test "should update authorized_shop" do
    patch authorized_shop_url(@authorized_shop), params: { authorized_shop: { address: @authorized_shop.address, name: @authorized_shop.name, owner_name: @authorized_shop.owner_name, product: @authorized_shop.product } }
    assert_redirected_to authorized_shop_url(@authorized_shop)
  end

  test "should destroy authorized_shop" do
    assert_difference("AuthorizedShop.count", -1) do
      delete authorized_shop_url(@authorized_shop)
    end

    assert_redirected_to authorized_shops_url
  end
end
