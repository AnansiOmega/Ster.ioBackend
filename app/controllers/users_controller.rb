class UsersController < ApplicationController


    def create
        user = User.create(user_params)
        if user.valid?
        render json: user
        else
        render json: { errors: user.errors.full_messages }
        end
    end

    def show
        user = User.find(params[:id])
        render json: user, include: '*.*'
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid?
            render json: user, include: '*.*'
        else
            render json: { errors: user.errors.full_messages }
        end
    end


      
    private

    def user_params
        if params[:image] == ''
            params.permit(:username, :password, :fname, :lname, :age, :email, :bio)
        else
            params.permit(:username, :password, :fname, :lname, :age, :email, :bio, :image)
        end
    end

end
