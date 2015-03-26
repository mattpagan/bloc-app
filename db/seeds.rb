 require 'faker'
 
 # Create Posts
 50.times do
   Post.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
   Post.create(
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
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"