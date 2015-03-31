# require 'faker'

# # Create Posts
# 50.times do 
#   Post.create!(
#     title: Faker::Lorem.sentence,
#     body: Faker::Lorem.paragraph
#     )
# end
# posts = Post.all 

# # Create Comments
# 100.times do 
#   Comment.create!(
#     post: posts.sample,
#     body: Faker::Lorem.paragraph
#     )
# end

# Create Advertisements
Advertisement.find_or_create_by(title: "Test Advertisement", 
copy: "This is a single test advertisement.", 
price: 10)

puts "Seed finished"
puts "#{Advertisement.count} advertisements created"
# puts "#{Post.count} posts created"
# puts "#{Comment.count} comments created"