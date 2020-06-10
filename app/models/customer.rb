class Customer < ApplicationRecord
  has_many :sheets

  validates :first_name, :email, presence: true
  validates :email, uniqueness: true
end
