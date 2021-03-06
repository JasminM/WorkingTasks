require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { department_id: @employee.department_id, firstname: @employee.firstname, lastname: @employee.lastname, position: @employee.position }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { department_id: @employee.department_id, firstname: @employee.firstname, lastname: @employee.lastname, position: @employee.position }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end

  test 'cant create an invalid employee' do
    post :create, id: @employee, employee: {firstname: nil, lastname: nil, department: nil}
    assert_response :ok
  end

  test 'cant update an invalid employee' do
    post :update, id: @employee, employee: {firstname: nil, lastname: nil, department: nil}
    assert_response :ok
  end
end
