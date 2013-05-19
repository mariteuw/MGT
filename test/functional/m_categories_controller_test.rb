require 'test_helper'

class MCategoriesControllerTest < ActionController::TestCase
  setup do
    @m_category = m_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_category" do
    assert_difference('MCategory.count') do
      post :create, :m_category => @m_category.attributes
    end

    assert_redirected_to m_category_path(assigns(:m_category))
  end

  test "should show m_category" do
    get :show, :id => @m_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_category.to_param
    assert_response :success
  end

  test "should update m_category" do
    put :update, :id => @m_category.to_param, :m_category => @m_category.attributes
    assert_redirected_to m_category_path(assigns(:m_category))
  end

  test "should destroy m_category" do
    assert_difference('MCategory.count', -1) do
      delete :destroy, :id => @m_category.to_param
    end

    assert_redirected_to m_categories_path
  end
end
