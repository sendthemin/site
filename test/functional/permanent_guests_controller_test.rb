require 'test_helper'

class PermanentGuestsControllerTest < ActionController::TestCase
  setup do
    @permanent_guest = permanent_guests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permanent_guests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permanent_guest" do
    assert_difference('PermanentGuest.count') do
      post :create, permanent_guest: { permanent_guest_name: @permanent_guest.permanent_guest_name }
    end

    assert_redirected_to permanent_guest_path(assigns(:permanent_guest))
  end

  test "should show permanent_guest" do
    get :show, id: @permanent_guest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permanent_guest
    assert_response :success
  end

  test "should update permanent_guest" do
    put :update, id: @permanent_guest, permanent_guest: { permanent_guest_name: @permanent_guest.permanent_guest_name }
    assert_redirected_to permanent_guest_path(assigns(:permanent_guest))
  end

  test "should destroy permanent_guest" do
    assert_difference('PermanentGuest.count', -1) do
      delete :destroy, id: @permanent_guest
    end

    assert_redirected_to permanent_guests_path
  end
end
