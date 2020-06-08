class AssignmentsController < ApplicationController
    
    get '/assignments' do
        redirect_if_not_login
        @user = current_user
        @course_assignments = @user.course.assignments.where(status: true).order(id: :desc)
        @exams = @user.course.exams.where(status: true).order(id: :desc)
        @number_passed_assignments =  @user.user_assignments.where(status: true).size
        @number_passed_exams = @user.user_exams.where("point > ?", 65).size
        erb :'assignments/assignment'
    end


    get '/submit_exam/:id' do
        redirect_if_not_login
        @user = current_user          
        @user_exam = UserExam.find_or_create_by(exam_id: params[:id], user_id: @user.id)
        erb :'assignments/submit_exam'
    end

    patch '/exam_random/:id' do
        @user = current_user
        user_update = UserExam.find_by_id(params[:id])
            if user_update.point.to_i == 0
                random_point = Random.rand(1...100)
                user_update.update(point: random_point)
                user_update.save 
                flash[:message] = "Submitted Successfully"
                redirect to '/assignments'
            else
                redirect to '/assignments'
                flash[:message] = "You already passed this exam."
            end
      end

    get '/edit_assignment/:id' do
        redirect_if_not_login
        @user = current_user
        @assignment = UserAssignment.find_or_create_by(assignment_id: params[:id], user_id: @user.id)
        erb :'assignments/start_edit_assignment'
        
      end

    
    patch '/edit_assignment/:id' do
        @user = current_user
        update_assignment = UserAssignment.find_by_id(params[:id])
        update_assignment.update(note: params[:edit_note])
        update_assignment.save
        flash[:message] = "Saved Successfully"
        redirect to '/assignments' 
    end


end

