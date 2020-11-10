require './config/environment'
require 'rack-flash'
class ApplicationController < Sinatra::Base

  use Rack::Flash
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
    end

    get '/' do
      if logged_in?
        @user ||= User.find(session[:user_id])
      end
      erb :index
    end
    
    helpers do
      def logged_in?
        !!session[:user_id]
      end
    
      def current_user
        @current_user ||= User.find(session[:user_id])
      end

      def redirect_if_not_login
        if !logged_in?
          redirect to '/'
        end 
      end
      
    end
end