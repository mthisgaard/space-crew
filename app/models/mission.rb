class Mission < ApplicationRecord
  has_many :orders
  has_many :crew_members, through: :orders
  validates :name, presence: true
  validates :description, presence: true
end
