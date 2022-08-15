class Order < ApplicationRecord
  belongs_to :crew_member
  belongs_to :mission
  validates :mission_id, uniqueness: { scope: :crew_member_id }
end
