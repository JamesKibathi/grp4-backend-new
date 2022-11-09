class User < ActiveRecord::Base
    has_many :shopping_lists
    has_many :items, through: :shopping_lists
end
