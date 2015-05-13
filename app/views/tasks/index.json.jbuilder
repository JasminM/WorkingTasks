json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :content, :priority, :status, :begin, :end, :customer_id, :subject_area_id
  json.url task_url(task, format: :json)
end
