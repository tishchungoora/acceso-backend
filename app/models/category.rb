class Category < ApplicationRecord
    has_many :cards
    has_ancestry
end
