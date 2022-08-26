class UsersController < ApplicationController
  
    get '/users' do
      types = User.all
      types.to_json
    end
 
    post '/users' do
      user_data = User.create(
        user_name: params[:user_name],
        user_password: params[:user_password],
        user_role: params[:user_role],
      )
      user_data.to_json
    end
  
  
  end
  