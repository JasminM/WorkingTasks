require 'test_helper'

class TaskTest < ActiveSupport::TestCase

  test "title_must be unique" do
    Task.new(:title => "Test").save
    task = Task.new(:title => "Test")
    assert_not task.save, "Saved the test with the same title as another"
  end

  test "should not save task without title" do
    task = Task.new
    assert_not task.save, "saved the author without a name"
  end
end
