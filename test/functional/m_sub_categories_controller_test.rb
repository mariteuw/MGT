require 'test_helper'

class MSubCategoriesControllerTest < ActionController::TestCase
  setup do
    @m_sub_category = m_sub_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_sub_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_sub_category" do
    assert_difference('MSubCategory.count') do
      post :create, :m_sub_category => @m_sub_category.attributes
    end

    assert_redirected_to m_sub_category_path(assigns(:m_sub_category))
  end

  test "should show m_sub_category" do
    get :show, :id => @m_sub_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_sub_category.to_param
    assert_response :success
  end

  test "should update m_sub_category" do
    put :update, :id => @m_sub_category.to_param, :m_sub_category => @m_sub_category.attributes
    assert_redirected_to m_sub_category_path(assigns(:m_sub_category))
  end

  test "should destroy m_sub_category" do
    assert_difference('MSubCategory.count', -1) do
      delete :destroy, :id => @m_sub_category.to_param
    end

    assert_redirected_to m_sub_categories_path
  end
end
