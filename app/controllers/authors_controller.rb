class AuthorsController < ApplicationController
  def index
    @authors = Author.all.order(:created_at)
  end

  def new
  end

  def show
    @authors = Author.find(params[:id])
    # @books = Book.where("author_id = #{@authors.id}").count
    @books = @authors.books.count
  end


  def create
    author = Author.new({
      name: params[:name],
      age: params[:age],
      still_writing: params[:still_writing]
    })
    author.save
    redirect_to '/authors'
  end

  def edit
    # require'pry';binding.pry
    @authors = Author.find(params[:id])
  end

  def update
    @authors = Author.find(params[:id])
    @authors.update({
      name: params[:name],
      age: params[:age],
      still_writing: params[:still_writing]
      })
    @authors.save
    redirect_to "/authors/#{@authors.id}"
  end

  def destroy
    # require'pry';binding.pry
    @authors = Author.find(params[:id])
    @books = @authors.books
    # require'pry';binding.pry
    @books.destroy
    @authors.destroy

    redirect_to "/authors"
  end
end