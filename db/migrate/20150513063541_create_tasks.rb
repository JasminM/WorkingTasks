class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.integer :priority
      t.string :status
      t.datetime :begin
      t.datetime :end
      t.belongs_to :customer, index: true, foreign_key: true
      t.belongs_to :subject_area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
