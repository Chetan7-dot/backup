json.extract! employee, :id, :account, :employee_id, :manager_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
