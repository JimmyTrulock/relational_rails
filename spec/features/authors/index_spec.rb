require "rails_helper"

RSpec.describe "authors index", type: :feature do
  describe "As a visitor" do
    describe "When I visit /authors" do
      # user story 1
      it "I see the name of each author record in the system" do
        author_1 = Author.create(name: "Stephen King", age: 61, still_writing: true)

        visit "/authors"

        expexct(page).to have_content(author_1.name)
        expexct(page).to have_content(author_1.age)
        expexct(page).to have_content(author_1.still_writing)
      end
    end
  end
end
