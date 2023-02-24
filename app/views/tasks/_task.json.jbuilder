json.extract! task, :id, :task_name, :owner, :collaborate, :collaborate_company, :start_date, :weekly_report_item, :created_at, :updated_at
json.url task_url(task, format: :json)
