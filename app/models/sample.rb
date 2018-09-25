class Sample < ApplicationRecord
  belongs_to :batch
  belongs_to :group
  belongs_to :pitch
  belongs_to :stage
  has_many :experiments
  has_many :appointments
end
