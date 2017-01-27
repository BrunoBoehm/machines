require 'test_helper'

class BrandsControllerTest < ActionController::TestCase
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brand" do
    assert_difference('Brand.count') do
      post :create, brand: { description: @brand.description, facebook_url: @brand.facebook_url, img: @brand.img, linkedin_url: @brand.linkedin_url, name: @brand.name, seo_keywords: @brand.seo_keywords, seo_text: @brand.seo_text, site_url: @brand.site_url, slug: @brand.slug, twitter_url: @brand.twitter_url }
    end

    assert_redirected_to brand_path(assigns(:brand))
  end

  test "should show brand" do
    get :show, id: @brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brand
    assert_response :success
  end

  test "should update brand" do
    patch :update, id: @brand, brand: { description: @brand.description, facebook_url: @brand.facebook_url, img: @brand.img, linkedin_url: @brand.linkedin_url, name: @brand.name, seo_keywords: @brand.seo_keywords, seo_text: @brand.seo_text, site_url: @brand.site_url, slug: @brand.slug, twitter_url: @brand.twitter_url }
    assert_redirected_to brand_path(assigns(:brand))
  end

  test "should destroy brand" do
    assert_difference('Brand.count', -1) do
      delete :destroy, id: @brand
    end

    assert_redirected_to brands_path
  end
end
