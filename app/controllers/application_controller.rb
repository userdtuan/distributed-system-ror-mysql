class ApplicationController < ActionController::Base
    before_action :check_storage, except: [:login]

    def check_storage
        if !cookies[:connection]
            redirect_to pages_login_path
        end
    end
end
