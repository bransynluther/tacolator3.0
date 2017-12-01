class MenuItem < ApplicationRecord
  has_many :counts
  has_many :item_totals, through: :counts

end
