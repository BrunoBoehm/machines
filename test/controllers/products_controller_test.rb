require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { imgs: @product.imgs, links: @product.links, long_description: @product.long_description, material: @product.material, name: @product.name, options: @product.options, pdfs: @product.pdfs, seo_keywords: @product.seo_keywords, seo_text: @product.seo_text, short_description: @product.short_description, slug: @product.slug, specs: @product.specs, tip: @product.tip, video_links: @product.video_links }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { imgs: @product.imgs, links: @product.links, long_description: @product.long_description, material: @product.material, name: @product.name, options: @product.options, pdfs: @product.pdfs, seo_keywords: @product.seo_keywords, seo_text: @product.seo_text, short_description: @product.short_description, slug: @product.slug, specs: @product.specs, tip: @product.tip, video_links: @product.video_links }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
