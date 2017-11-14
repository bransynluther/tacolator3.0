class Count < ApplicationRecord
  belongs_to :item_total
  belongs_to :menu_item

  def get_calories
   (self.menu_item.calories * self.count)
  end
end
