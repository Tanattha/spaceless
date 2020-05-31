class PostsController < ApplicationController

    get '/posts' do
        if logged_in?
            @user = current_user
            erb :'posts/post'
        else
            redirect to '/login'
        end
    end

    patch '/edit/:id' do
        if logged_in?
            @user = current_user
            edit_post = Post.find_by_id(params[:id]) 
            edit_post.user_id == @user.id
            edit_post.update(title: params[:edit_title], content: params[:edit_content])
            edit_post.save
            redirect to '/posts'
        else
            redirect to '/login'
        end
    end

    post '/create' do
        if logged_in?
        @user = current_user
            if params[:title] == "" || params[:content] == ""
                flash[:message] = "All contents can't be blank"
                redirect to '/posts'
            else
                new_post = Post.create(:title => params[:new_title], :content => params[:new_content], :user_id => @user.id, :course_id => @user.course_id)
                #binding.pry
                redirect to '/posts'
            end
        else
            redirect to '/login'
        end
    end

    delete '/delete/:id' do
        if logged_in?
            @user = current_user
            @delete_post = Post.find_by_id(params[:id]) 
            @delete_post.user_id == @user.id
            @delete_post.destroy
            redirect to '/posts'
        else
            redirect to '/login'
        end
    end
    
end
    