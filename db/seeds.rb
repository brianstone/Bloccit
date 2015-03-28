#require 'faker'

# Create Posts
# 50.times do 
#   Post.create!(
#     title: Faker::Lorem.sentence,
#     body: Faker::Lorem.paragraph
#     )
# end
# posts = Post.all 

unique_post = Post.find_or_create_by(title: "It's up to me now...", body: "Turn on the bright lights...")
unique_post
# Create Comments
# 100.times do 
#   Comment.create!(
#     post: posts.sample,
#     body: Faker::Lorem.paragraph
#     )
# end
Comment.find_or_create_by(post: unique_post, body: "This is one of my favorite songs!")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"