class UsersController < ApplicationController

  get "/signup" do
    redirect_if_not_login
    redirect to '/account'
  end
  
  post '/signup' do
    if params[:username] == "" || params[:email] == "" || params[:password] == ""
      flash[:message] = "All contents can't be blank or Username is already in use."
      redirect to '/signup'
    else
      @user = User.create(:first_name => params[:first_name], :last_name => params[:last_name], :username => params[:username], :email => params[:email], :password => params[:password])  
        if @user.save
          session[:user_id] = @user.id
          if !@user.avatar 
            random = Random.rand(1...5)
            @user.update(avatar: "../images/avatars/#{random}.jpg")
            @user.save
          end

          flash[:message] = "Created an account Successfully"
          redirect to '/account'
        else
          flash[:message] = "Username already in used"
          redirect to '/'
        end
    end
  end

  get "/login" do
    redirect_if_not_login
    redirect to '/account'
  end

  post "/login" do
    @user = User.find_by(username:  params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:message] = "logged in Successfully"
      if @user.role_id == 1
        redirect '/admin'
      else
        redirect '/account'
      end
    else
      flash[:message] = "Invalid username or password. Please Try again."
      redirect '/login'
    end
  end

  get '/logout' do
      session.destroy
      flash[:message] = "Logged out successfully."
      redirect to '/'
  end

  get '/account' do
      redirect_if_not_login
      @user = current_user
      erb :'users/account'
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
        flash[:message] = "Submitted Successfully"
        redirect to '/account'
      else
        redirect to '/account'
        flash[:message] = "You already assigned course."
      end
  end

end