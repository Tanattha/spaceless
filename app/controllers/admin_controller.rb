class AdminController < ApplicationController

  get '/admin' do
    if logged_in?
      @user = current_user
      @all_assignment = UserAssignment.where(status:  0)
      erb :'admin/admin'
    else
      redirect to '/'
    end
  end
  
  get '/approved_assignment/:id' do
    if logged_in?
      @user = current_user
        if @user.role_id == 1
          redirect to '/admin'
        else
          redirect to '/'
        end
    else
      redirect to '/'
    end
  end
 
  patch '/approved_assignment/:id' do
    if logged_in?
      @user = current_user
        if @user.role_id == 1
          @approved_assignment = UserAssignment.find_by(assignment_id: params[:id])
          @approved_assignment.update(status: 1)  
          @approved_assignment.save
          flash[:message] = "Approved Succesfully"
          redirect to '/admin'
        else
          redirect to '/'
        end
    else
      redirect to '/'
    end
  end

end