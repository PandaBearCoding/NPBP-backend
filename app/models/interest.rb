class Interest < ApplicationRecord
    has_many :items
    has_many :favorites 
    has_many :users, through: :favorites 

    accepts_nested_attributes_for :items
end
