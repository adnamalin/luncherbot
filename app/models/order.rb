class Order < ApplicationRecord

  def self.order_by_channel(channel)
    Order.where(channel: channel).order(id: :asc)
  end

  def self.print_all_orders(orders)
    orders.map {|o| "```Order ##{o.id}: #{o.name.capitalize} | #{o.restaurant.capitalize} at #{o.lunch_date.strftime("%B %d, %Y at %I:%M")}```"}.join(" ")
  end

  def print_single_order
    "*Order ##{self.id}: #{self.name.capitalize} | #{self.restaurant.capitalize} at #{self.lunch_date.strftime("%B %d, %Y at %I:%M")}* \n #{self.menu} \n ```list of items```"
  end

end
