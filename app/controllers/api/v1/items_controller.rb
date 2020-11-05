class Api::V1::ItemsController < ApplicationController
    before_action :find_item, only: [:show]

    def index
        items = Item.all
        render json: items, except: [:created_at, :updated_at, :interest_id]
    end 

    def show 
    end 

    private
    def find_item
        item = Item.find(params[:id])
    end
end
    
    
