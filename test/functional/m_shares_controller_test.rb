require 'test_helper'

class MSharesControllerTest < ActionController::TestCase
  setup do
    @m_share = m_shares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_shares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_share" do
    assert_difference('MShare.count') do
      post :create, :m_share => @m_share.attributes
    end

    assert_redirected_to m_share_path(assigns(:m_share))
  end

  test "should show m_share" do
    get :show, :id => @m_share.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_share.to_param
    assert_response :success
  end

  test "should update m_share" do
    put :update, :id => @m_share.to_param, :m_share => @m_share.attributes
    assert_redirected_to m_share_path(assigns(:m_share))
  end

  test "should destroy m_share" do
    assert_difference('MShare.count', -1) do
      delete :destroy, :id => @m_share.to_param
    end

    assert_redirected_to m_shares_path
  end
end
