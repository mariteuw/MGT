require 'test_helper'

class MContactsControllerTest < ActionController::TestCase
  setup do
    @m_contact = m_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_contact" do
    assert_difference('MContact.count') do
      post :create, :m_contact => @m_contact.attributes
    end

    assert_redirected_to m_contact_path(assigns(:m_contact))
  end

  test "should show m_contact" do
    get :show, :id => @m_contact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @m_contact.to_param
    assert_response :success
  end

  test "should update m_contact" do
    put :update, :id => @m_contact.to_param, :m_contact => @m_contact.attributes
    assert_redirected_to m_contact_path(assigns(:m_contact))
  end

  test "should destroy m_contact" do
    assert_difference('MContact.count', -1) do
      delete :destroy, :id => @m_contact.to_param
    end

    assert_redirected_to m_contacts_path
  end
end
