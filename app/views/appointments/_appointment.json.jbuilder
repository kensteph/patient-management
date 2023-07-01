json.extract! appointment, :id, :app_date, :description, :user_id, :patient_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
