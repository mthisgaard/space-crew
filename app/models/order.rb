class Order < ApplicationRecord
  belongs_to :crew_member
  belongs_to :mission
  validates :comment, presence: true
  validates :mission_id, uniqueness: { scope: :crew_member_id }
end
