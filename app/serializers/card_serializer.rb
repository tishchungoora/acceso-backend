class CardSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url
  belongs_to :category
end
