class AdminController < ApplicationController

  get '/admin' do
    redirect_if_not_login
    @user = current_user
    @all_assignment = UserAssignment.where(status:  0)
    erb :'admin/admin'
  end
  
  get '/approved_assignment/:id' do
    redirect_if_not_login
    @user = current_user
      if @user.role_id == 1
        redirect to '/admin' 
    else
      redirect to '/'
    end
  end
 
  patch '/approved_assignment/:id' do
    redirect_if_not_login
    @user = current_user
      if @user.role_id == 1
        @approved_assignment = UserAssignment.find_by(assignment_id: params[:id])
        @approved_assignment.update(status: 1)  
        @approved_assignment.save
        flash[:message] = "Approved Succesfully"
        redirect to '/admin'
      end
    end

end