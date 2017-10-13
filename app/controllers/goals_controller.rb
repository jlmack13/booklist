class GoalsController < ApplicationController

  #show user list of goals
  #TO DO: Determine if I want the user to be able to see ALL of their old goals or just the current one?
  get '/goals' do
    if logged_in?
      @user = current_user
      @goals = @user.goals.all
      erb :'goals/index'
    else
      redirect to '/'
    end
  end

  #create new goal
  get '/goals/new' do
    if logged_in?
      erb :'goals/new'
    else
      redirect to '/'
    end
  end

  post '/goals' do
    if params[:target_number] == ""
      redirect to '/goals/new'
    else
      previous_goal = Goal.find_by(active: true)
      previous_goal.update(active: false)
      @goal = current_user.goals.create(target_number: params[:target_number], active: true)
      redirect to "/goals/#{@goal.id}"
    end
  end

  #show one goal
  get '/goals/:id' do
    @goal = Goal.find_by_id(params[:id])
    if logged_in? && @goal.user_id == current_user.id
      erb :'goals/show'
    else
      redirect to '/'
    end
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
