class Sample < ApplicationRecord
  belongs_to :juice_shipment
  belongs_to :stage
  has_many :additions
  has_many :experiments
end
