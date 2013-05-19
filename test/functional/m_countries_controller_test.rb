require 'test_helper'

class MCountriesControllerTest < ActionController::TestCase
  setup do
    @m_country = m_countries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_country" do
    assert_difference('MCountry.count') do
      post :create, :m_country => @m_country.attributes
    end

    assert_redirected_to m_country_path(assigns(:m_country))
  end

  test "should show m_country" do
    get :show, :id => @m_country.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_country.to_param
    assert_response :success
  end

  test "should update m_country" do
    put :update, :id => @m_country.to_param, :m_country => @m_country.attributes
    assert_redirected_to m_country_path(assigns(:m_country))
  end

  test "should destroy m_country" do
    assert_difference('MCountry.count', -1) do
      delete :destroy, :id => @m_country.to_param
    end

    assert_redirected_to m_countries_path
  end
end
