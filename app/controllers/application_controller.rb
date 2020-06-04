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
        @user = current_user
        erb :index
      else
        redirect to '/'
      end
    end
    
    helpers do
      def logged_in?
        !!session[:user_id]
      end
    
      def current_user
        @current_user ||= User.find(session[:user_id])
      end
    end
end