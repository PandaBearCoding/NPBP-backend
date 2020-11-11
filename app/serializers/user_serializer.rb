class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location, :profile_pic, :fav_interests
  has_many :favorites
end
