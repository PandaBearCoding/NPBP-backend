class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :interest_id
  belongs_to :user
end