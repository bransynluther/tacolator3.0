class Item < ApplicationRecord
  has_many: :item_maths
  has_many: :totals
end
