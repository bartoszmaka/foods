class AddMealTimeAndNameToMeal < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :eaten_at, :datetime, default: -> { 'CURRENT_TIMESTAMP' }
    add_column :meals, :meal_of_day, :string
  end
end
