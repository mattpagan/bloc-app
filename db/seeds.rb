 require 'faker'

 # Create Users
 5.times do
   user = User.new(
     name:     Faker::Name.name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end
 users = User.all
 
 # Note: by calling `User.new` instead of `create`,
 # we create an instance of User which isn't immediately saved to the database.
 
 # The `skip_confirmation!` method sets the `confirmed_at` attribute
 # to avoid triggering an confirmation email when the User is saved.
 
 # The `save` method then saves this User to the database.
 
 # Create Posts
 50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
   Post.create(
   user: users.sample,
	 title: "your title", 
	 body: "your body"
   ) unless Post.where(title: "your title", body: "your body").present? #check db for this title and body
 end

 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
     post: posts.sample,
     body: Faker::Lorem.paragraph
   )
   Comment.create(
	 title: "your title", 
	 body: "your body"
   ) unless Post.where(title: "your title", body: "your body").present?
 end
 user = User.first
 user.skip_reconfirmation!
 user.update_attributes!(
   email: 'youremail.com',
   password: 'helloworld'
 )
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"