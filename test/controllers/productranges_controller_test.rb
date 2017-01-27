require 'test_helper'

class ProductrangesControllerTest < ActionController::TestCase
  setup do
    @productrange = productranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productrange" do
    assert_difference('Productrange.count') do
      post :create, productrange: { description: @productrange.description, imgs: @productrange.imgs, name: @productrange.name, seo_keywords: @productrange.seo_keywords, seo_text: @productrange.seo_text, slug: @productrange.slug }
    end

    assert_redirected_to productrange_path(assigns(:productrange))
  end

  test "should show productrange" do
    get :show, id: @productrange
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productrange
    assert_response :success
  end

  test "should update productrange" do
    patch :update, id: @productrange, productrange: { description: @productrange.description, imgs: @productrange.imgs, name: @productrange.name, seo_keywords: @productrange.seo_keywords, seo_text: @productrange.seo_text, slug: @productrange.slug }
    assert_redirected_to productrange_path(assigns(:productrange))
  end

  test "should destroy productrange" do
    assert_difference('Productrange.count', -1) do
      delete :destroy, id: @productrange
    end

    assert_redirected_to productranges_path
  end
end
