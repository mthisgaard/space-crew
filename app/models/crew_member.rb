class CrewMember < ApplicationRecord
  has_many :orders, dependent: :delete_all
  has_many :missions, through: :orders
  validates :name, presence: true
  validates :position, presence: true
end
