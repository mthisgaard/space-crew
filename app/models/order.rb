class Order < ApplicationRecord
  belongs_to :crew
  belongs_to :mission
end
