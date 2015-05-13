json.array!(@employees) do |employee|
  json.extract! employee, :id, :position, :lastname, :firstname, :department_id
  json.url employee_url(employee, format: :json)
end
