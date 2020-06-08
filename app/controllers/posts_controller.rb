class PostsController < ApplicationController

    get '/posts' do
        redirect_if_not_login
        @user = current_user
        @number_posts = Post.where(course_id: @user.course_id).size
        erb :'posts/post'
    end

    patch '/edit/:id' do
        @user = current_user
        edit_post = Post.find_by_id(params[:id]) 
        if edit_post.user_id == @user.id
        edit_post.update(title: params[:edit_title], content: params[:edit_content])
        edit_post.save
        flash[:message] = "Submitted Successfully"
        end
            redirect to '/posts'
    end

    post '/create' do
        redirect_if_not_login
        @user = current_user
            if params[:title] == "" || params[:content] == ""
                flash[:message] = "All contents can't be blank"
                redirect to '/posts'
            else
                new_post = Post.create(:title => params[:new_title], :content => params[:new_content], :user_id => @user.id, :course_id => @user.course_id)
                flash[:message] = "Submitted Successfully"
                redirect to '/posts'
            end
    end

    delete '/delete/:id' do
        redirect_if_not_login
            @user = current_user
            @delete_post = Post.find_by_id(params[:id]) 
           if @delete_post.user_id == @user.id
            @delete_post.destroy
            flash[:message] = "Deleted Successfully"
            end
            redirect to '/posts'
    end
    
end
    