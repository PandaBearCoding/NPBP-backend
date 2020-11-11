class User < ApplicationRecord
    has_many :favorites 
    has_many :interests, through: :favorites 
    
    accepts_nested_attributes_for :favorites

    def fav_interests
    #     # add method as an attribute on serializer 
    #     # create array, iterate through each fav, grab interest for each fav, push into array and return array 
    #     # instance method is user that will return user's fav interests --> have array that we can print 
        User.first.favorites.map {|fav| fav.interest}
    end 
end