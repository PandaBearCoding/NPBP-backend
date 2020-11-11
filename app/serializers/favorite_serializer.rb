class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :interest_id
  has_one :user
  # has_one :interest
end
