require 'test_helper'

class MPreferencesControllerTest < ActionController::TestCase
  setup do
    @m_preference = m_preferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_preferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_preference" do
    assert_difference('MPreference.count') do
      post :create, :m_preference => @m_preference.attributes
    end

    assert_redirected_to m_preference_path(assigns(:m_preference))
  end

  test "should show m_preference" do
    get :show, :id => @m_preference.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_preference.to_param
    assert_response :success
  end

  test "should update m_preference" do
    put :update, :id => @m_preference.to_param, :m_preference => @m_preference.attributes
    assert_redirected_to m_preference_path(assigns(:m_preference))
  end

  test "should destroy m_preference" do
    assert_difference('MPreference.count', -1) do
      delete :destroy, :id => @m_preference.to_param
    end

    assert_redirected_to m_preferences_path
  end
end
