class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.to_i
    @products = []
  end

  def add_product(product_add)
    @products << product_add
  end

  def details
    cart = ShoppingCart.new("King Soopers", "30items")
    cart_hash = cart.instance_variables.each_with_object({}) {|var, hash| hash[var[1..-2].to_sym] = cart.instance_variable_get(var) }
    return cart_hash
  end

  def total_number_of_products
    products.each do |product|
      sum += product.quantity
    end
    sum
  end


end
