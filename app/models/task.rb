class Task < ActiveRecord::Base
  belongs_to :customer
  belongs_to :subject_area
end
