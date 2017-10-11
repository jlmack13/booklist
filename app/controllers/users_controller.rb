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
    if logged_in?
      session.destroy
      redirect to '/login'
    else
      redirect to '/'
    end
  end

  #signup
  get '/signup' do
    if !logged_in?
      erb :'users/signup'
    else
      redirect to '/books'
    end
  end

  post '/signup' do
    if params[:name] == "" || params[:email] == "" || params[:password] == ""
      redirect to '/signup'
    else
      @user = User.new(name: params[:name], email: params[:email], password: params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect to '/books'
    end
  end


end
