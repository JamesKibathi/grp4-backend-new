class User < ActiveRecord::Base
    has_many :shopping_lists
end
