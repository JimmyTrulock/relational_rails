class AuthorbooksController < ApplicationController
  def index
    @authors = Author.find(params[:id])

    if params[:sort] == 'asc'
      @authorbooks = @authors.books.order(title: :asc)
    else 
      @authorbooks = @authors.books
    end
  end
end