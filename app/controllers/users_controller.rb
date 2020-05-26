require 'pry'
class UsersController < ApplicationController

  get "/" do
    erb :index
  end

  get "/signup" do
    erb :'users/signup'
  end
  
  post "/signup" do
    if params[:username] == "" || params[:password] == ""
      redirect '/failure'
    else
      User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], username: params[:username], password: params[:password])
      session[:user_id] = user.id
      redirect '/account'
    end
  end

  get "/login" do
    erb :'users/login'
  end

  post "/login" do
     user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/account'
    else
      redirect '/failure'
    end
  end

  get '/admin' do
    @show_all = User.all
    erb :'admin/admin'
  end

  get '/account' do
    @user = current_user
    @user_course = Course.find_by_id(@user.course_id)
    @user_assignment = Assignment.find_by_id(@user.assignment_id)
    binding.pry
    erb :'users/account'
  end

  get "/failure" do
    erb :'users/failure'
  end

  get "/posts" do
    redirect 'posts/index_post'
  end

  get "/group" do
    @user = current_user
    @user_group = User.where(course_id: @user.course_id)
    erb :'group/index_group'
  end

  get "/logout" do
    session.clear
    redirect "/"
  end

end