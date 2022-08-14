class Mission < ApplicationRecord
  has_many :orders, dependent: :delete_all
  has_many :crew_members, through: :orders
  validates :name, presence: true
  validates :description, presence: true
end
