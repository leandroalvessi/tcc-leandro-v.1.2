require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { balance_id: @product.balance_id, code: @product.code, damage: @product.damage, description: @product.description, product_kind_id: @product.product_kind_id, quantity: @product.quantity, unit_of_measurement: @product.unit_of_measurement, user_id: @product.user_id } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { balance_id: @product.balance_id, code: @product.code, damage: @product.damage, description: @product.description, product_kind_id: @product.product_kind_id, quantity: @product.quantity, unit_of_measurement: @product.unit_of_measurement, user_id: @product.user_id } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
