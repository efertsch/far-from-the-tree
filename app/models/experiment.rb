class Experiment < ApplicationRecord
  belongs_to :sample
  belongs_to :test
end
