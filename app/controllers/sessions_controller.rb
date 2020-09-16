class SessionsController < ApplicationController
    ##actions for returning users

    def new
    end

    def create
        user = User.find_by(username: params(:username))
        session[:user_id] = user.id
        redirect_to '/home'
    end
end
