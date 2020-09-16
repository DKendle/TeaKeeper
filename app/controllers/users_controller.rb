class UsersController < ApplicationController
    ## actions to signup for the first time in the app

    def show
        #will show the user specific profile
    end

    def new
        @user = User.new
    end

    def create

        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to "/"
        else
            render :new
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
