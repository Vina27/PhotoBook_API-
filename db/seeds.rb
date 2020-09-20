# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Book.destroy_all
Photo.destroy_all 
Comment.destroy_all 
Category.destroy_all 

may = User.create(name: "may", bio: "I love traveling!")
book1 = Book.create(user_id: may.id, title:"Travel 101")
photo1 = Photo.create(description: "Playful Day", book_id: book1.id, img_url:"https://frontiersinblog.files.wordpress.com/2018/05/psychology-playful-boys-gender-difference-children-education.jpg")
comment1 = Comment.create(user_id: may.id, photo_id:photo1.id, content: "I love this picture!")
travelbook = Category.create(book_id: book1.id, title: "Travel Photos")