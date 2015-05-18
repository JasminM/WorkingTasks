require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "the title must be uniqe" do
    assert_raise ActiveRecord::RecordInvalid do
      Task.create! title: tasks(:one).title
    end
  end

  test "should not save task without title" do
    task = Task.new
    assert_not task.save, "saved the author without a name"
  end
end
