class Experiment < ApplicationRecord
  belongs_to :test
  belongs_to :sample, optional: true
end
