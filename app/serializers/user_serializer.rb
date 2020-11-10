class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :location, :profile_pic
  has_many :favorites
end