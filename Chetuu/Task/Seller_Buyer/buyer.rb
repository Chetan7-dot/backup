#buyer.rb

class Buyer < User
    def self.all
        buyer?(super.all)
    end
end
