class Appointment < ApplicationRecord
  belongs_to :test
  belongs_to :sample
end
