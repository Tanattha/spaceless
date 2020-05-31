class AdminController < ApplicationController

    get '/admin' do
        if logged_in?
            @show_all = User.find(param[:id])
            erb :'admin/admin'
        else
            redirect to '/login'
      end
    end
end