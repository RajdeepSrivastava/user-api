class Api::V1::UsersController < ApplicationController
    def index
        @users = Users.all
        render json: @users, status: 200
    end

    def create
        @users = Users.new(Users_param)
        if @users.save
            render json: users, status: 200
        else
            render json: {error: "Can't Create"}
        end
    end

    def update
        @user = Users.find_by(id: params[:id])
        if @user.update
            render json: users, status: 200
        else
            render json: {error: "Can't Update"}
        end
    end

    private

    def Users_param
        params.require(:users).permit(:first_name, :last_name, :email, :address, :zipcode)
    end
end
