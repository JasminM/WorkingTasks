require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { begin: @task.begin, content: @task.content, customer_id: @task.customer_id, end: @task.end, priority: @task.priority, status: @task.status, subject_area_id: @task.subject_area_id, title: @task.title }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { begin: @task.begin, content: @task.content, customer_id: @task.customer_id, end: @task.end, priority: @task.priority, status: @task.status, subject_area_id: @task.subject_area_id, title: @task.title }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end

  test 'cant create an invalid task' do
    post :create, id: @task, task: {title: nil}
    assert_response :ok
  end
end
