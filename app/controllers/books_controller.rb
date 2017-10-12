class BooksController < ApplicationController

  #show user list of books
  get '/books' do
    @user = current_user
    erb :'books/index'
  end

  #create new book
  get '/books/new' do

  end

  post '/books' do

  end

  #show one book
  get '/books/:id' do

  end

  #edit a book
  get '/books/:id/edit' do

  end

  patch '/books/:id' do

  end

  #delete a book
  get '/books/:id/delete' do
    
  end

end
