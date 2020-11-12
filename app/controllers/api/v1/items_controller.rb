class Api::V1::ItemsController < ApplicationController
    # before_action :find_item, only: [:show]

    def index
        items = Item.all
        render json: items
    end 

    # def show 
    #     item = Item.find(params[:id])
    #     render json: item
    # end 

    # private
    # def find_item
    #     item = Item.find(params[:id])
    # end

end
