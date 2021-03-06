class Spending < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user

  validates :amount, presence: true
  validates :category_id, presence: true
end
