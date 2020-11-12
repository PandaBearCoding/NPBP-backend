class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :interest

    accepts_nested_attributes_for :interest

    validates :interest_id, uniqueness: {scope: :user_id,  message: "Already Added to Your Favorites" }

end
