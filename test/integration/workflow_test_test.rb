require 'test_helper'

class WorkflowTestTest < ActionDispatch::IntegrationTest
  def task
    tasks(:one)
  end

  def employee
    employees(:additional)
  end

  test 'can update employees of an task' do
    patch_via_redirect task_path(task), id: task.id, task: {employee_ids: [employee.id]}
    assert_response :ok
    assert_template "tasks/show"
    assert_includes task.employees, employee
  end
end
