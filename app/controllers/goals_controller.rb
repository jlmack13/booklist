class GoalsController < ApplicationController

  #show user list of goals
  #TO DO: Determine if I want the user to be able to see ALL of their old goals or just the current one?
  get '/goals' do
    @user = current_user
    erb :'goals/index'
  end

  #create new goal
  get '/goals/new' do

  end

  post '/goals' do

  end

  #show one goal
  get '/goals/:id' do

  end

  #edit a goal
  get '/goals/:id/edit' do

  end

  patch '/goals/:id' do

  end

  #delete a goal
  get '/goals/:id/delete' do

  end

end
