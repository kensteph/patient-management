class WorkDetail < ApplicationRecord
  belongs_to :patientWork
  belongs_to :service
end
