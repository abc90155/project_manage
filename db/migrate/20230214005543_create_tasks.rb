class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :owner
      t.string :collaborate
      t.string :collaborate_company
      t.date :start_date
      t.text :weekly_report_item

      t.timestamps
    end
  end
end
