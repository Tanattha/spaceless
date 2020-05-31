class AssignmentsController < ApplicationController
    
    get '/assignments' do
        if logged_in?
            @user = current_user
            @number_assignment = @user.user_assignments.where(status: true)
            erb :'assignments/assignment'
        else
            redirect to '/login'
        end
    end

    get '/edit_assignment/:id' do
        if logged_in?
            @user = current_user
            @assignment = UserAssignment.find_or_create_by(assignment_id: params[:id], user_id: @user.id, course_id: @user.course_id)
            erb :'assignments/start_edit_assignment'
        else
            redirect to '/login'
        end
      end

    patch '/edit_assignment/:id' do
        if logged_in?
            update_assignment = UserAssignment.find_by_id(params[:id]) 
            update_assignment.update(note: params[:edit_note])
            update_assignment.save
            flash[:message] = "Saved Successfully"
            redirect to '/assignments' 
        else
        redirect to '/login'
      end
    end

    post '/update_assignment/:id' do
        if logged_in?
            redirect to '/assignments'
        else
            redirect to '/login'
        end
    end
end

