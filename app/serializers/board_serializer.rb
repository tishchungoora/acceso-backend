class BoardSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :behaviour
  has_many :cards, through: :board_cards
end
