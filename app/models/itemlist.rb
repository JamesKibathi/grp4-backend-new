class ItemList < ActiveRecord::Base
    belongs_to :shopping_lists
    belongs_to :items
end