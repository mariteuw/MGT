require 'test_helper'

class MFriendsControllerTest < ActionController::TestCase
  setup do
    @m_friend = m_friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_friend" do
    assert_difference('MFriend.count') do
      post :create, :m_friend => @m_friend.attributes
    end

    assert_redirected_to m_friend_path(assigns(:m_friend))
  end

  test "should show m_friend" do
    get :show, :id => @m_friend.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_friend.to_param
    assert_response :success
  end

  test "should update m_friend" do
    put :update, :id => @m_friend.to_param, :m_friend => @m_friend.attributes
    assert_redirected_to m_friend_path(assigns(:m_friend))
  end

  test "should destroy m_friend" do
    assert_difference('MFriend.count', -1) do
      delete :destroy, :id => @m_friend.to_param
    end

    assert_redirected_to m_friends_path
  end
end
