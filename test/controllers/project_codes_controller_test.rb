require 'test_helper'

class ProjectCodesControllerTest < ActionController::TestCase
  setup do
    @project_code = project_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_code" do
    assert_difference('ProjectCode.count') do
      post :create, project_code: { code: @project_code.code, project: @project_code.project }
    end

    assert_redirected_to project_code_path(assigns(:project_code))
  end

  test "should show project_code" do
    get :show, id: @project_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_code
    assert_response :success
  end

  test "should update project_code" do
    patch :update, id: @project_code, project_code: { code: @project_code.code, project: @project_code.project }
    assert_redirected_to project_code_path(assigns(:project_code))
  end

  test "should destroy project_code" do
    assert_difference('ProjectCode.count', -1) do
      delete :destroy, id: @project_code
    end

    assert_redirected_to project_codes_path
  end
end
