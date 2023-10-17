RSpec.describe "authors show", type: :feature do
  describe "As a visitor" do
    describe "When I visit /authors/:id" do
      it " see the parent with that id including the parent's attributes" do
        author_1 = Author.create(name: "Stephen King", age: 61, still_writing: true)

        visit "/authors/:id"

        expexct(page).to have_content(author_1.name)
        expexct(page).to have_content(author_1.age)
        expexct(page).to have_content(author_1.still_writing)
      end

      it "I see a count of the number of books associated with this author" do
        @author_1 = Author.create(name: "Stephen King", age: 61, still_writing: true)
        save_and_open_page
        visit "/authors/#{@author_1.id}"

        expect(page).to have_content("Books: 2")
      end
    end
  end
end
