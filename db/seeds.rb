# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = ["Adrian Swift",
    "Jessie Mosciski",
    "Mandie Huels DDS",
    "George Dietrich",
    "Brant Krajcik",
    "Hilaria Rempel",
    "Emory Hodkiewicz",
    "Madelyn Rempel II",
    "Oren Predovic",
    "Al Walsh"
]

authors.each { |name| Author.create(name: name) }
(1..20).each do |num|
    Post.create(title: "title#{num}", content: "content#{num}", author: Author.all[num/3])
end
(1..20).each do |num|
    Favorite.create(author: Author.all[9 - num/3], post: Post.all[num%3])
end

Favorite.create(author_id: 5, post_id: 10)