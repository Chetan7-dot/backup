require './sample_data'
require './user'
require './seller'

require './product'

# Find a scenario for the ruby exercise below:
# Today before lunch you need to describe DB design with ER diagram then you need to Implement that.
# - Find below the functionality, that you need to implement for given scenario:
# - Scenario: Take the list of all the users and return array of user objects correspond to the list.
# - Parameters: list of all the users(hash) given above.
# - Output: Return list of user objects

puts '=' * 100
User.create(Sample_Data.dummy_users)
puts User.all

# - Scenario: Take the list of all the products and return array of product objects correspond to the given list.
# - Parameters: list of all the products(hash) given above.
# - Output: Return list of product objects

puts '=' * 100
User.create(Sample_Data.dummy_products)
puts Product.all

# - Scenario: Write method to get the full name of buyer (ex: suppose :first_name => 'alex' and  :last_name => 'newman'  of user, then full name would be 'Alex Neewman') 
# - Parameters: A buyer record for ex: {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
# - Output: "Sundar Pichai"

puts '=' * 100
puts User.all.first.full_name

# - Scenario: Write method to get the full name of buyer/seller 
#  (ex: suppose :first_name => 'alex' and  :last_name => 'newman'  of user, then full name would be 'Alex Neewman') 

# - Scenario: Write method to find the age of buyer/seller on the basis of his date_of_birth
# - Parameter: A buyer/seller record for ex: {:first_name => 'Sundar', :last_name => 'Pichai',  :date_of_birth => '11-05-1983',  :address => 'vijay nagar', :role => 'buyer'}
# - Output: Return age of user after calculating from date_of_birth

puts '=' * 100
puts Buyer.all>(User.all)

# - Scenario: Write a method in Buyer class, which will take all the users list as input and return buyers only
# - Paramters: All the users given above
# - Output: return array of all the buyer objects


puts '=' * 100
puts User.Buyer.all(User.all)

# - Scenario: Write a method in Seller class, which will take all the users list as input and return buyers only
# - Paramters: All the users given above
# - Output: return array of all the seller objects 

puts '=' * 100
puts User.Seller.all(User.all)

# - Scenario: Find all the users, whose first name is 'alex'
# - Paramters: All the users list given above
# - Output: return array of all the user objects whose first name is alex

puts '=' * 100
puts User.find_by_name('alex')