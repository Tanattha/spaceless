class UsersController < ApplicationController

  get "/signup" do
    if logged_in?
      redirect to '/account'
    else
      erb :index
    end
  end
  
  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      flash[:message] = "All contents can't be blank or Username is already in use."
      redirect to '/signup'
    else
      @user = User.create(:first_name => params[:first_name], :last_name => params[:last_name], :username => params[:username], :email => params[:email], :password => params[:password])  
        if @user.save
          session[:user_id] = @user.id
          redirect to '/account'
        else
          erb :'users/signup'
        end
    end
  end

  get "/login" do
    if logged_in?
      redirect to '/account'
    else
      redirect to '/'
    end
  end

  post "/login" do
    user = User.find_by(username:  params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      if user.role_id == 1
        redirect '/admin'
      else
        redirect '/account'
      end
    else
      flash[:message] = "Invalid username or password."
      redirect '/login'
    end
  end

  get '/account' do
    if logged_in?
      @user = current_user
      erb :'users/account'
    else
      redirect to '/'
    end
  end

  get '/logout' do
    session.destroy
    flash[:message] = "Logged out successfully."
    redirect to '/'
  end

  get "/group" do
    @user = current_user
    @user_group = User.where(course_id: @user.course_id)
    erb :'group/group'
  end

  patch '/random/:id' do
    @user = current_user

    if @user.course_id.to_i == 0
      random_course = Random.rand(1...4)
      @user.update(course_id: random_course)
      @user.save 
      redirect to '/account'
    else
      redirect to '/account'
      flash[:message] = "You already assigned course."
    end
  end

 

end