class AddCoreTables < ActiveRecord::Migration[5.1]
  def change
    create_table :diabetes_measurements do |t|
      t.string :insulin_type, null: true
      t.integer :insulin_amount, null: true
      t.integer :glucose_level, size: 10, null: true

      t.timestamps
    end

    create_table :products do |t|
      t.string :name
      t.integer :grams, null: true
    end

    create_table :nutrition_tables do |t|
      t.integer :calories, null: true
      t.integer :carbohydrates, null: true
      t.integer :fats, null: true
      t.integer :proteins, null: true
    end

    create_table :meals do |t|
      t.string :name

      t.timestamps
    end
  end
end
