json.extract! work_detail, :id, :patientWork_id, :service_id, :created_at, :updated_at
json.url work_detail_url(work_detail, format: :json)
