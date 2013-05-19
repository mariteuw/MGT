require 'test_helper'

class MGeneralsControllerTest < ActionController::TestCase
  setup do
    @m_general = m_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_general" do
    assert_difference('MGeneral.count') do
      post :create, :m_general => @m_general.attributes
    end

    assert_redirected_to m_general_path(assigns(:m_general))
  end

  test "should show m_general" do
    get :show, :id => @m_general.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_general.to_param
    assert_response :success
  end

  test "should update m_general" do
    put :update, :id => @m_general.to_param, :m_general => @m_general.attributes
    assert_redirected_to m_general_path(assigns(:m_general))
  end

  test "should destroy m_general" do
    assert_difference('MGeneral.count', -1) do
      delete :destroy, :id => @m_general.to_param
    end

    assert_redirected_to m_generals_path
  end
end
