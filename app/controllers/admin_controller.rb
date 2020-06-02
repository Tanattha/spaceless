class AdminController < ApplicationController

    get '/admin' do
        if logged_in?
            erb :'admin/admin'
        else
            redirect to '/login'
      end
    end

   


   
end