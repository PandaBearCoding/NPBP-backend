class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :interest

    accepts_nested_attributes_for :interest
end
