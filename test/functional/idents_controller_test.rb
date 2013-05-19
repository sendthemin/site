require 'test_helper'

class IdentsControllerTest < ActionController::TestCase
  setup do
    @ident = idents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ident" do
    assert_difference('Ident.count') do
      post :create, ident: { name: @ident.name }
    end

    assert_redirected_to ident_path(assigns(:ident))
  end

  test "should show ident" do
    get :show, id: @ident
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ident
    assert_response :success
  end

  test "should update ident" do
    put :update, id: @ident, ident: { name: @ident.name }
    assert_redirected_to ident_path(assigns(:ident))
  end

  test "should destroy ident" do
    assert_difference('Ident.count', -1) do
      delete :destroy, id: @ident
    end

    assert_redirected_to idents_path
  end
end
