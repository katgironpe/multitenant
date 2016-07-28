class Company < ApplicationRecord
  validates :user_id, presence: true
  validates :name, presence: true, uniqueness: true
end
