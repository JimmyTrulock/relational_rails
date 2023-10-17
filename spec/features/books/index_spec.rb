require "rails_helper"

RSpec.describe "books index", type: :feature do
  describe "As a visitor" do
    describe "When I visit /books" do
      it "I see each book in the system including the book's attributes" do
        book_1 = Book.create(title: "IT", pages: 1138, award_winning: false, author_id: 3)

        visit "/books"

        expexct(page).to have-content(book_1.title)
        expexct(page).to have-content(book_1.pages)
        expexct(page).to have-content(book_1.award_winning)
        expexct(page).to have-content(book_1.author_id)
      end
    end
  end
end