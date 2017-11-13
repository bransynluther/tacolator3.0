class ItemTotal < ApplicationRecord
  has_many :counts
  has_many :menu_items, through: :counts
end
