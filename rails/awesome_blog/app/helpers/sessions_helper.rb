module SessionsHelper
    def log_in(user)
        # creates a session
        session[:user_id] = user.id
    end

    def log_out
        #delete the session created
        session.delete(:user_id)
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end
end
