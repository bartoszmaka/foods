class Meal < ApplicationRecord
  has_many :products
  has_many :diabetes_measurements

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
