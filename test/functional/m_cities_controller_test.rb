require 'test_helper'

class MCitiesControllerTest < ActionController::TestCase
  setup do
    @m_city = m_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_city" do
    assert_difference('MCity.count') do
      post :create, :m_city => @m_city.attributes
    end

    assert_redirected_to m_city_path(assigns(:m_city))
  end

  test "should show m_city" do
    get :show, :id => @m_city.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_city.to_param
    assert_response :success
  end

  test "should update m_city" do
    put :update, :id => @m_city.to_param, :m_city => @m_city.attributes
    assert_redirected_to m_city_path(assigns(:m_city))
  end

  test "should destroy m_city" do
    assert_difference('MCity.count', -1) do
      delete :destroy, :id => @m_city.to_param
    end

    assert_redirected_to m_cities_path
  end
end
