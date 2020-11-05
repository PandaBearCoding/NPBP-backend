class Api::V1::InterestsController < ApplicationController
    before_action :find_interest, only: [:show]

    def index
        interests = Interest.all.sort_by {|interest| interest.category}
        render json: interests, except: [:created_at, :updated_at, :user_id, :category_id]
    end 

    def show 
    end 

    private
    def find_interest
        interest = Interest.find(params[:id])
    end
end
    