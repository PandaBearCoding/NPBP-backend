class Api::V1::ItemsController < ApplicationController
    before_action :find_item, only: [:show]

    def index
        items = Item.all.sort_by {|item| item.interest_id }
        render json: items
    end 

    def show 
    end 

    private
    def find_item
        item = Item.find(params[:id])
    end
end
    
    
