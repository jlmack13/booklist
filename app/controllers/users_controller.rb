class UsersController < ApplicationController

  #login
  get '/login' do
    if !logged_in?
      erb :'users/login'
    else
      redirect to '/books'
    end
  end

  post '/login' do
    user = User.find_by(:email => params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/books'
    else
      redirect to '/signup'
    end
  end

  #logout
  get '/logout' do

  end

  #signup
  get '/signup' do
    erb :'users/signup'
  end


end
