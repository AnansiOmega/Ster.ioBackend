class UsersController < ApplicationController


    def create
        user = User.create(user_params)
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user, include: '*.*'
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, include: '*.*'
    end


      
    private

    def user_params
        params.permit(:username, :password, :fname, :lname, :age, :email, :bio, :image)
    end

end
