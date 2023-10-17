class BooksController < ApplicationController
  def index
    @books = Book.all
    # require'pry';binding.pry
  end

  def show
    @books = Book.find(params[:id])
  end

  def new
    # require'pry';binding.pry
    @authors = Author.find(params[:id])
  end

  def create
    # require'pry';binding.pry
    @books = Book.new({
      title: params[:title],
      pages: params[:pages],
      award_winning: params[:award_winning],
      author_id: params[:author_id]
    })
    # require'pry';binding.pry
    @books.save
    redirect_to "/authors/#{@books.author_id}/books"
  end

  def edit
    # require'pry';binding.pry
    @books = Book.find(params[:id])
  end

  def update
    @books = Book.find(params[:id])
    @books.update({
      title: params[:title],
      pages: params[:pages],
      award_winning: params[:award_winning]
      })
    @books.save
    redirect_to "/books/#{@books.id}"
  end

  def destroy
    @books = Book.where "id = #{(params[:id])}"
    # require'pry';binding.pry
    @books.destroy(params[:id])

    redirect_to "/authors"
  end
end