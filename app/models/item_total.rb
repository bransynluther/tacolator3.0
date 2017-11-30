class ItemTotal < ApplicationRecord
  has_many :counts
  has_many :menu_items, through: :counts

  def increment(item_id)
    unless counts.find_by_menu_item_id(item_id)
    count_object = Count.create(count: 1, menu_item_id: item_id, item_total_id:
                                self.id)
    else
    count_object = counts.find_by_menu_item_id(item_id).increment(:count)
    end

    count_object.save!

  end

    def decrement(item_id)
      if counts.find_by_menu_item_id(item_id)
       if counts.find_by_menu_item_id(item_id).count > 1

         count_object = counts.find_by_menu_item_id(item_id).decrement(:count)

         count_object.save!
      else
        counts.find_by_menu_item_id(item_id).delete
       end
      end
     end
 end
