class Count < ApplicationRecord
  belongs_to :item_total
  belongs_to :menu_item

  def get_calories
   self.count * self.menu_item.calories
  end
end
