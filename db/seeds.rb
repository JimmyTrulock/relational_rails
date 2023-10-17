# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@king = Author.create(name: "Stephen King", age: 61, still_writing: true)
@bradbury = Author.create(name: "Ray Bradbury", age: 91, still_writing: false)
@gaiman = Author.create(name: "Neil Gaiman", age: 62, still_writing: true)
@it = @king.books.create(title: "IT", pages: 1108, award_winning: false)
@carrie = @king.books.create(title: "Carrie", pages: 199, award_winning: true)
@fahrenheit = @bradbury.books.create(title: "Fahrenheit 451", pages: 256, award_winning: true)
@sandman = @gaiman.books.create(title: "The Sandman", pages: 453, award_winning: true)
