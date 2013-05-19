require 'test_helper'

class MRatingsControllerTest < ActionController::TestCase
  setup do
    @m_rating = m_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_rating" do
    assert_difference('MRating.count') do
      post :create, :m_rating => @m_rating.attributes
    end

    assert_redirected_to m_rating_path(assigns(:m_rating))
  end

  test "should show m_rating" do
    get :show, :id => @m_rating.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_rating.to_param
    assert_response :success
  end

  test "should update m_rating" do
    put :update, :id => @m_rating.to_param, :m_rating => @m_rating.attributes
    assert_redirected_to m_rating_path(assigns(:m_rating))
  end

  test "should destroy m_rating" do
    assert_difference('MRating.count', -1) do
      delete :destroy, :id => @m_rating.to_param
    end

    assert_redirected_to m_ratings_path
  end
end
