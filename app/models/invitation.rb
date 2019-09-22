class Invitation < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :name, presence: true
  validates :business, presence: true
end
