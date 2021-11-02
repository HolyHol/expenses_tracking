class Category < ApplicationRecord
  has_many :spendings

  validates :name, presence: true
end
