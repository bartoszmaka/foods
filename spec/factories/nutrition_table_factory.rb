FactoryBot.define do
  factory :nutrition_table do
    product

    calories { 1000 }
    carbohydrates { 50 }
    proteins { 50 }
    fats { 65 }
  end
end
