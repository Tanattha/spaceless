require 'pry'
class AccountsController < ApplicationController
    
    get '/assignments' do
        @user_assignment = current_user
        @show_assignment = Assignment.find_by_id(@user_assignment.assignment_id)
        erb :'assignments/index_assignments'
    end

    post '/submit_assignment' do
        @user_update = current_user
        redirect to "/submitted_assignment/#{@user_update.id}"
    end

    get '/submit_assignment/:id' do
        @user_update = current_user
        @assignment_update = Assignment.find_by_id(@user_update.assignment_id)
        erb :'assignments/submitted_assignment'
    end

    patch '/submit_assignment/:id' do
        @user_update = current_user
        @user_update.assignment_status = false
        @user_update.save
        redirect to "/submit_assignment/#{@user_update.id}"
    end

   
  
  
   
   

end

