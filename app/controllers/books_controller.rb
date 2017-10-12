class BooksController < ApplicationController

  #show user list of books
  get '/books' do
    if logged_in?
      @user = current_user
      @books = @user.books.all
      erb :'books/index'
    else
      redirect to '/'
    end
  end

  #create new book
  get '/books/new' do
    if logged_in?
      erb :'books/new'
    else
      redirect to '/'
    end
  end

  post '/books' do
    if params[:title] == ""
      redirect to '/books/new'
    else
      @book = current_user.books.create(title: params[:title], author: params[:author], length: params[:length], format: params[:format], favorite: params[:favorite])
      redirect to "/books/#{@book.id}"
    end
  end

  #show one book
  get '/books/:id' do
    if logged_in?

    else
      redirect to '/'
    end
  end

  #edit a book
  get '/books/:id/edit' do
    if logged_in?

    else
      redirect to '/'
    end
  end

  patch '/books/:id' do

  end

  #delete a book
  get '/books/:id/delete' do
    if logged_in?

    else
      redirect to '/'
    end
  end

end
