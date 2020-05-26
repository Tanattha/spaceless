class PostsController < ApplicationController

    get '/posts/index_post' do
        @user = current_user
        @user_course_name = Course.find_by_id(@user.course_id)
        @whole_course_posts = Post.where(course_id: @user.course_id)
        @each_id = @whole_course_posts.each {|get_id| get_id.user_id}
        @find_who_posted = User.where(id: @each_id, course_id: @user.course_id )
        binding.pry
        erb :'posts/index_post'
    end

    patch '/edit/:id' do
        @user = current_user
        edit_post = Post.find_by_id(params[:id]) 
        edit_post.user_id == @user.id
        edit_post.update(title: params[:edit_title], content: params[:edit_content])
        edit_post.save
        redirect 'posts/index_post'
    end

    post '/create' do
        @user = current_user
        create_post = Post.create(title: params[:new_title], content: params[:new_content], user_id: @user.id, course_id: @user.course_id)
        redirect 'posts/index_post'
    end

    delete '/delete/:id' do
        @user = current_user
        @delete_post = Post.find_by_id(params[:id]) 
        @delete_post.user_id == @user.id
        @delete_post.destroy
        redirect 'posts/index_post'
    end
    
end
    