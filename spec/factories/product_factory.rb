FactoryBot.define do
  factory :product do
    meal

    sequence(:name) { |n| "product ##{n}" }
    grams { rand(10..200) }
  end
end
