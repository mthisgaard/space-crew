class CrewMember < ApplicationRecord
  belongs_to :position
  has_many :orders
  has_many :missions, through: :orders
  validates :name, presence: true
  validates :origin, presence: true
end
