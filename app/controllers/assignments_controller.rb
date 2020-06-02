class AssignmentsController < ApplicationController
    
    get '/assignments' do
        if logged_in?
            @user = current_user
            @course_assignments = @user.course.assignments.where(status: true).order(id: :desc)
            @exams = @user.course.exams.where(status: true)
            @number_passed_assignments =  @user.user_assignments.where(status: true).size
            @number_passed_exams = @user.user_exams.where("point > ?", 65).size
            erb :'assignments/assignment'
        else
            redirect to '/'
        end
    end


    get '/submit_exam/:id' do
        if logged_in?
            @user = current_user          
            @user_exam = UserExam.find_or_create_by(exam_id: params[:id], user_id: @user.id, course_id: @user.course_id)
            erb :'assignments/submit_exam'
        else
            redirect to '/'
        end
    end

    patch '/exam_random/:id' do
        @user = current_user
        user_update = UserExam.find_by_id(params[:id])
        if user_update.point.to_i == 0
          random_point = Random.rand(1...100)
          user_update.update(point: random_point)
          user_update.save 
          redirect to '/assignments'
        else
          redirect to '/assignments'
          flash[:message] = "You already passed this exam."
        end
      end

    get '/edit_assignment/:id' do
        if logged_in?
            @user = current_user
            @assignment = UserAssignment.find_or_create_by(assignment_id: params[:id], user_id: @user.id, course_id: @user.course_id)
            erb :'assignments/start_edit_assignment'
        else
            redirect to '/'
        end
      end

    
    patch '/edit_assignment/:id' do
      
        if logged_in?
            @user = current_user
            update_assignment = UserAssignment.find_by_id(params[:id])
            update_assignment.update(note: params[:edit_note])
            update_assignment.save
            flash[:message] = "Saved Successfully"
            redirect to '/assignments' 
        else
            redirect to '/'
      end
    end

    post '/update_assignment/:id' do
        if logged_in?
            redirect to '/assignments'
        else
            redirect to '/'
        end
    end



end

