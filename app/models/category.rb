class Category < ApplicationRecord
    has_ancestry
    has_many :cards
end
