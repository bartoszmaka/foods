class DiabetesMeasurement < ApplicationRecord
  belongs_to :meal, optional: true
end
