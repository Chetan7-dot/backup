def calculate_total
    product_adapters.collect {|item| item.valid? ? (item.product.price * item.product_quantity) : 0}.sum
 end