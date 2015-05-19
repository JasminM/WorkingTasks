class Employee < ActiveRecord::Base
  belongs_to :department
  has_and_belongs_to_many :tasks

  validates_presence_of :firstname, :lastname, :department
end
