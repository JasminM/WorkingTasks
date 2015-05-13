class Task < ActiveRecord::Base
  belongs_to :customer
  belongs_to :subject_area
  has_and_belongs_to_many :employees
end
