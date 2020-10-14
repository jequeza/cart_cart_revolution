class Product
  attr_reader :category, :name, :unit_price, :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_f
    @hoarded_product = 0
  end

  def total_price
    @quantity * @unit_price
  end

  def is_hoarded?
    if @hoarded_product == 0
      return false
    else
      return true
    end
  end

  def hoard
    @hoarded_product += @hoarded_product
  end

end
