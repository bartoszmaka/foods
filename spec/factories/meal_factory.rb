FactoryBot.define do
  factory :meal do
    sequence(:name) { |n| "yummy factoried guacamole ##{n}" }
  end
end
