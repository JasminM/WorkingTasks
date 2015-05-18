require 'test_helper'

class SubjectAreaTest < ActiveSupport::TestCase
  test "the name must be uniqe" do
    assert_raise ActiveRecord::RecordInvalid do
      SubjectArea.create! name: subject_areas(:one).name
    end
  end
end
