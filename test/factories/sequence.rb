FactoryBot.define do
  sequence :string, aliases: [:name, :description, :password] do |n|
    "string#{n}"
  end
  sequence :email do |n|
    "person#{n}@test.com"
  end
end
