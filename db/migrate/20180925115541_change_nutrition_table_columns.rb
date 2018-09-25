class ChangeNutritionTableColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :nutrition_tables, :calories,      :float, default: 0, precision: 6, scale: 1, null: false
    change_column :nutrition_tables, :carbohydrates, :float, default: 0, precision: 3, scale: 1, null: false
    change_column :nutrition_tables, :proteins,      :float, default: 0, precision: 3, scale: 1, null: false
    change_column :nutrition_tables, :fats,          :float, default: 0, precision: 3, scale: 1, null: false
  end
end
