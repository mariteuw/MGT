require 'test_helper'

class MTipsControllerTest < ActionController::TestCase
  setup do
    @m_tip = m_tips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_tips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_tip" do
    assert_difference('MTip.count') do
      post :create, :m_tip => @m_tip.attributes
    end

    assert_redirected_to m_tip_path(assigns(:m_tip))
  end

  test "should show m_tip" do
    get :show, :id => @m_tip.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_tip.to_param
    assert_response :success
  end

  test "should update m_tip" do
    put :update, :id => @m_tip.to_param, :m_tip => @m_tip.attributes
    assert_redirected_to m_tip_path(assigns(:m_tip))
  end

  test "should destroy m_tip" do
    assert_difference('MTip.count', -1) do
      delete :destroy, :id => @m_tip.to_param
    end

    assert_redirected_to m_tips_path
  end
end
