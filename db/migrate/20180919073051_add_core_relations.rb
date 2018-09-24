class AddCoreRelations < ActiveRecord::Migration[5.1]
  def change
    add_reference :nutrition_tables, :product, index: true, foreign_key: true
    add_reference :products, :meal, index: true, foreign_key: true
    add_reference :diabetes_measurements, :meal, index: true, foreign_key: true, null: true
  end
end
