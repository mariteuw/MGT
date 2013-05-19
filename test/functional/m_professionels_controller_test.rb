require 'test_helper'

class MProfessionelsControllerTest < ActionController::TestCase
  setup do
    @m_professionel = m_professionels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_professionels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_professionel" do
    assert_difference('MProfessionel.count') do
      post :create, :m_professionel => @m_professionel.attributes
    end

    assert_redirected_to m_professionel_path(assigns(:m_professionel))
  end

  test "should show m_professionel" do
    get :show, :id => @m_professionel.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_professionel.to_param
    assert_response :success
  end

  test "should update m_professionel" do
    put :update, :id => @m_professionel.to_param, :m_professionel => @m_professionel.attributes
    assert_redirected_to m_professionel_path(assigns(:m_professionel))
  end

  test "should destroy m_professionel" do
    assert_difference('MProfessionel.count', -1) do
      delete :destroy, :id => @m_professionel.to_param
    end

    assert_redirected_to m_professionels_path
  end
end
