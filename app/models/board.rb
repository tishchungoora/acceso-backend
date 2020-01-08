class Board < ApplicationRecord
  belongs_to :user
  belongs_to :behaviour
  has_many :board_cards
  has_many :cards, through: :board_cards
end
