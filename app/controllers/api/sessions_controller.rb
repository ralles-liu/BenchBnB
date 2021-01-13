class Api::SessionsController < ApplicationController

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

        if @user.nil?
            render json: ["invalid login"], status: 401
        else
            login!(@user)
            render "api/users/show"
        else
    end



    def destroy
        if logged_in?
            logout!
            render json: {}
        else
            render json: ['you are not logged in'] status: 404
        end


    end



end
