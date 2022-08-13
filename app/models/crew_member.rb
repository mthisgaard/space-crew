class CrewMember < ApplicationRecord
  has_many :orders
  has_many :missions, through: :orders
  validates :name, presence: true
  validates :origin, presence: true
end
