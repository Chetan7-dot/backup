#product.rb
class Product
  attr_accessor :name, :seller, :price, :category

  @products = []
  def initialize(product_hash)
    product_hash.each { |k, v| public_send{"#{k}=", v} }
  end
  
  def self.create(products)
    products.each do |product|
      @Products <<Product.new(products)
    end
  end

  def slef.all
    @products
  end

  def to_s
    inspect
  end
end  