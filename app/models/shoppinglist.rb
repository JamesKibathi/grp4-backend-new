class shoppingList < ActiveRecord::Base
    has_many :items
    puts "Hello"
end