class ApplicationController < ActionController::Base

    def authentication
        #####change path after sessions controller is 
        if !logged_in?
            redirect_to '/login'
        end
    end

    def logged_in?
        session[:username]
    end

end
