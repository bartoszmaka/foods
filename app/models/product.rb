class Product < ApplicationRecord
  belongs_to :meal
  has_one :nutrition_table

  def carbohydrates
    grams * nutrition_table.carbohydrates / 100
  end

  def proteins
    grams * nutrition_table.proteins / 100
  end

  def fats
    grams * nutrition_table.fats / 100
  end

  def calories
    grams * nutrition_table.calories / 100
  end
end
