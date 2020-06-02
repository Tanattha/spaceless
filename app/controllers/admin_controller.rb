class AdminController < ApplicationController

    get '/admin' do
      @user = current_user
      #binding.pry
      @all_assignment = UserAssignment.all.where(status: false)
      erb :'admin/admin'
    end

  
    get '/approved_assignment/:id' do
      if logged_in?
        @user = currentuser
          if @user.role_id == 1
            assignment = UserAssignment.find_by(params[:id])
            redirect to '/admin'
          else
            redirect to '/'
          end
      else
        redirect to '/'
      end
    end
 
    patch 'approved_assignment/:id' do
      if logged_in?
        @user = currentuser
          if @user.role_id == 1
            approved_assignment = UserAssignment.find_by(params[:id])
            approved_assignment.update(staus: true)
            approved_assignment.save
            redirect to '/admin'
          else
            redirect to '/'
          end
      else
        redirect to '/'
      end
    end
 
end