class LineItem < ApplicationRecord
  belongs_to :dish
  belongs_to :cart

  def total_price
    dish.price.to_i * quantity.to_i
  end
end
