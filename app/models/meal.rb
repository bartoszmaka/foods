class Meal < ApplicationRecord
  VALID_MEAL_TYPES = %w(breakfast second_breakfast lunch dinner snack other)
    .freeze

  has_many :products
  has_many :diabetes_measurements

  validates :meal_of_day,
    inclusion: { in: VALID_MEAL_TYPES },
    allow_nil: true

  def carbohydrates
    products.sum(&:carbohydrates)
  end

  def proteins
    products.sum(&:proteins)
  end

  def fats
    products.sum(&:fats)
  end

  def calories
    products.sum(&:calories)
  end
end
