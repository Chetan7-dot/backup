# User.rb
class User
  attr_accessor :first_name, :last_name, :date_of_birth, :address, :role
  
  @users = []
  def initialize(user_hash)
    user_hash.each { |k, v| public_send("#{k}=", v) }
  end

  def ful_name
    "#{@first_name} #{last_name}"
  end

  def self.create(users)
    users.each do |user|
      @users << User.new(user)
    end
  end
  
  def self.all
    @users
  end

  def self.selller?(users)
    users.select { |user| user.role.eql?('seller') }

  def self.buyer?(users)
    users.select { |user| user.role.eql?('buyer') }
  end
  
  # def role?(role)
  #   self.role == role
  # end
  
  def to_s
    inspect
  end

  def age
    2021 - date_of_birth.split('-').last.to_i
  end

  def self.find_by_name(first_name)
    @users.select { |user| user.first_name == first_name }
    end
  end
end