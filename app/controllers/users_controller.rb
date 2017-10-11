class UsersController < ApplicationController

  #login
  get '/login' do
    erb :'users/login'
  end

  post '/login' do

  end

  #logout
  get '/logout' do

  end

  #signup
  get '/signup' do
    erb :'users/signup'
  end


end
