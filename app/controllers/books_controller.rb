class BooksController < ApplicationController

  #show user list of books
  get '/books' do
    @user = current_user
    erb :'books/index'
  end
end
