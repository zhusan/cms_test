require 'test_helper'

class CkeditorTestsControllerTest < ActionController::TestCase
  setup do
    @ckeditor_test = ckeditor_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ckeditor_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ckeditor_test" do
    assert_difference('CkeditorTest.count') do
      post :create, ckeditor_test: { content: @ckeditor_test.content, title: @ckeditor_test.title }
    end

    assert_redirected_to ckeditor_test_path(assigns(:ckeditor_test))
  end

  test "should show ckeditor_test" do
    get :show, id: @ckeditor_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ckeditor_test
    assert_response :success
  end

  test "should update ckeditor_test" do
    patch :update, id: @ckeditor_test, ckeditor_test: { content: @ckeditor_test.content, title: @ckeditor_test.title }
    assert_redirected_to ckeditor_test_path(assigns(:ckeditor_test))
  end

  test "should destroy ckeditor_test" do
    assert_difference('CkeditorTest.count', -1) do
      delete :destroy, id: @ckeditor_test
    end

    assert_redirected_to ckeditor_tests_path
  end
end
