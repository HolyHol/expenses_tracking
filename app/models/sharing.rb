class Sharing < ApplicationRecord
  belongs_to :user
  belongs_to :shared_to_user, class_name: 'User'
end
