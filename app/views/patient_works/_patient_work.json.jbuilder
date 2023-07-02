json.extract! patient_work, :id, :description, :estimation, :discount, :patient_id, :created_at, :updated_at
json.url patient_work_url(patient_work, format: :json)
