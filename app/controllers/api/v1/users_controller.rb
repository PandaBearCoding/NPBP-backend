class Api::V1::UsersController < ApplicationController
    # before_action :find_user, only: [:show, :update, :destroy]
    # skip_before_action :authorized, only: [:new, :create, :login, :handle_login, :homepage]
    
    def index
        users = User.all.sort_by {|user| user.name}
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def create
        user = User.create!(user_params)
        render json: user
    end

    def update
        user = User.find(params[:id])

        user.update!(user_params)

        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {}
    end

    def homepage
    end

    def login
    end

    def logout
        session[:user] = nil
        flash[:message] = "You have successfully logged out"
        redirect_to login_path
    end

    private
    # def find_user
    #     user = User.find(params[:id])
    # end

    def user_params
        params.require(:user).permit(:username, :name, :location, :profile_pic)
    end
end
