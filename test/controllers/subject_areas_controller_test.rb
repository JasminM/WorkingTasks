require 'test_helper'

class SubjectAreasControllerTest < ActionController::TestCase
  setup do
    @subject_area = subject_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_area" do
    assert_difference('SubjectArea.count') do
      post :create, subject_area: { name: "#{@subject_area.name} #{SubjectArea.count}" }
    end

    assert_redirected_to subject_area_path(assigns(:subject_area))
  end

  test "should show subject_area" do
    get :show, id: @subject_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_area
    assert_response :success
  end

  test "should update subject_area" do
    patch :update, id: @subject_area, subject_area: { name: @subject_area.name }
    assert_response :ok
  end

  test "should destroy subject_area" do
    assert_difference('SubjectArea.count', -1) do
      delete :destroy, id: @subject_area
    end

    assert_redirected_to subject_areas_path
  end

  test 'cant create an invalid subject_area' do
    post :create, id: @subject_area, subject_area: {name: nil}
    assert_response :ok
  end
end
