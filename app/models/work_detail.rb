class WorkDetail < ApplicationRecord
  belongs_to :patient_work
  belongs_to :service
end
