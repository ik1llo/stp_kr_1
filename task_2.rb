class ShoppingCart
  def initialize
    @products = []
  end

  def add_product (title, price)
    @products << { title: title, price: price }
  end

  def calculate_total_cost
    @products.sum { |product| product[:price] }.round(2)
  end
end

RSpec.describe ShoppingCart do
  let(:cart) { ShoppingCart.new }

  describe "#add_product" do
    it "adds a product to the cart" do
      cart.add_product("milk", 5.0)
      expect(cart.calculate_total_cost).to eq(5.0)
    end

    it "adds multiple products to the cart" do
      cart.add_product("milk", 5.0)
      cart.add_product("bread", 3.7)

      expect(cart.calculate_total_cost).to eq(8.7)
    end
  end

  describe "#calculate_total_cost" do
    it "returns 0.0 for an empty cart" do
      expect(cart.calculate_total_cost).to eq(0.0)
    end

    it "calculates the total shopping cart cost" do
      cart.add_product("milk", 5.0)
      cart.add_product("bread", 3.7)
      cart.add_product("durex", 22.9)

      expect(cart.calculate_total_cost).to eq(31.6)
    end
  end
end