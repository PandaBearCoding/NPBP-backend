class Api::V1::FavoritesController < ApplicationController
    before_action :find_favorite, only: [:show, :update, :destroy]

    def index
        favorites = Favorite.all.sort_by {|favorite| favorite.user_id}
        render json: favorites, except: [:created_at, :updated_at]     
    end

    def update
        favorite.update!(favorite_params)
        render json:{}
    end 

    def create
        favorite = @user.favorites.create!(favorite_params)
        render json: favorite
    end

    def destroy
        favorite.destroy
        render json: {}
    end 

    private
    def find_favorite
        favorite = Favorite.find(params[:id])
    end
    
    def favorite_params
        params.require(:favorite).permit(:user_id, :interest_id)
    end
end




