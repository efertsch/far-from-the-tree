class Group < ApplicationRecord
  has_many :samples
  belongs_to :batch, through: :samples
end
