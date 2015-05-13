class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :position
      t.string :lastname
      t.string :firstname
      t.belongs_to :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
