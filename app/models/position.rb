class Position < ApplicationRecord
  has_many :crew_members
  validates :name, presence: true
end
