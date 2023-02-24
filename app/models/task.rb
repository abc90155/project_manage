class Task < ApplicationRecord
	validates_presence_of :task_name
	has_rich_text :weekly_report_item
	has_many :comments
end
