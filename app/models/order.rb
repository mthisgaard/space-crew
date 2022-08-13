class Order < ApplicationRecord
  belongs_to :crew_member
  belongs_to :mission
  validates :comment, presence: true
end
