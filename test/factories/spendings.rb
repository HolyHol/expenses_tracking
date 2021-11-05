FactoryBot.define do
  factory :spending do
    description
    amount { 1 }
    user_id { 1 }
    category_id { 1 }
  end
end
