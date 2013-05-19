require 'test_helper'

class MRegistersControllerTest < ActionController::TestCase
  setup do
    @m_register = m_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_register" do
    assert_difference('MRegister.count') do
      post :create, :m_register => @m_register.attributes
    end

    assert_redirected_to m_register_path(assigns(:m_register))
  end

  test "should show m_register" do
    get :show, :id => @m_register.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_register.to_param
    assert_response :success
  end

  test "should update m_register" do
    put :update, :id => @m_register.to_param, :m_register => @m_register.attributes
    assert_redirected_to m_register_path(assigns(:m_register))
  end

  test "should destroy m_register" do
    assert_difference('MRegister.count', -1) do
      delete :destroy, :id => @m_register.to_param
    end

    assert_redirected_to m_registers_path
  end
end
