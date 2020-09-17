class ApplicationController < ActionController::Base

    def auth_required
        #####change path after sessions controller is 
        if !logged_in?
            redirect_to '/login'
        end
    end

    def logged_in?
        session[:user_id]
    end

end
