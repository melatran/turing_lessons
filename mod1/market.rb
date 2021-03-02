class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    1) require "pry"; binding.pry #@name name"argument variable full duration"
    @vendors = []
    2) require "pry"; binding.pry #@name name @vendors
  end
  def add_vendor(vendor)
    @vendors << vendor
    3) require "pry"; binding.pry #@name vendor @vendors
  end
  def vendor_names
    @vendors.map {|vendor| vendor.name}
  end
  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      4) require "pry"; binding.pry # @name @vendors, vendor, item, name(method through attr_reader)
      vendor.inventory.keys.include?(item)
    end
  end
  def total_inventory

    5) require "pry"; binding.pry #@name @vendors, vendor_names

    inventory = {}

    6) require "pry"; binding.pry #@name @vendors, inventory

    @vendors.each do |vendor|
      item_info = {quantity: 0, vendors: []}

      7) require "pry"; binding.pry   #@name @vendors inventory vendor, item_info
                                      #deeper inside block you have access to everything above
      vendor.inventory.each do |item, quantity|
        item_info[:quantity] += quantity
        item_info[:vendors] << vendor
        inventory[item] = item_info
      end
    end
    inventory
    8) require "pry"; binding.pry   #@name @vendors inventory because we're still inside method
            # no item info because we don't have access to it
  end
end

require "pry";binding.pry