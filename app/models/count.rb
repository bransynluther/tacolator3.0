class Count < ApplicationRecord
  belongs_to :item_total
  belongs_to :menu_item

  def get_calories
   menu_item.calories * count
  end

  def get_price
   menu_item.price * count * 100
  end
end
