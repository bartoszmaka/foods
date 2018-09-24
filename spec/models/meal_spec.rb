require 'rails_helper'

describe Meal do
  it 'initializes successfully' do
    expect { create(:meal) }.to change { Meal.count }.by(1)
  end

  describe '#carbohydrates' do
    it 'returns sum of all products carbohydrates' do
      meal = create(:meal)
      product_1 = create(:product, meal: meal, grams: 200)
      product_2 = create(:product, meal: meal, grams: 100)
      create(:nutrition_table, carbohydrates: 10, product: product_1)
      create(:nutrition_table, carbohydrates: 15, product: product_2)

      expect(meal.carbohydrates).to eq(35)
    end
  end

  describe '#fats' do
    it 'returns sum of all products fats' do
      meal = create(:meal)
      product_1 = create(:product, meal: meal, grams: 200)
      product_2 = create(:product, meal: meal, grams: 100)
      create(:nutrition_table, fats: 10, product: product_1)
      create(:nutrition_table, fats: 15, product: product_2)

      expect(meal.fats).to eq(35)
    end
  end

  describe '#proteins' do
    it 'returns sum of all products proteins' do
      meal = create(:meal)
      product_1 = create(:product, meal: meal, grams: 200)
      product_2 = create(:product, meal: meal, grams: 100)
      create(:nutrition_table, proteins: 10, product: product_1)
      create(:nutrition_table, proteins: 15, product: product_2)

      expect(meal.proteins).to eq(35)
    end
  end

  describe '#calories' do
    it 'returns sum of all products calories' do
      meal = create(:meal)
      product_1 = create(:product, meal: meal, grams: 200)
      product_2 = create(:product, meal: meal, grams: 100)
      create(:nutrition_table, calories: 100, product: product_1)
      create(:nutrition_table, calories: 150, product: product_2)

      expect(meal.calories).to eq(350)
    end
  end
end
