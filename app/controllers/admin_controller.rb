class AdminController < ApplicationController

    get '/admin' do
       
        @show_all = User.find(param[:id])
        erb :'admin/admin'
    end
end