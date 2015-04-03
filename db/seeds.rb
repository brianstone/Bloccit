require 'faker'

# Create Users
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    )
  user.skip_confirmation!
  user.save!
end
users = User.all

# Create Posts
50.times do 
  Post.create!(
    user: users.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end
posts = Post.all 

# Create Comments
100.times do 
  Comment.create!(
    post: posts.sample,
    body: Faker::Lorem.paragraph
    )
end

# Create Advertisements
Advertisement.find_or_create_by(title: "Test Advertisement", 
copy: "This is a single test advertisement.", 
price: 10)

user = User.first
user.skip_reconfirmation!
user.update_attributes!(
  email: 'brianpatrickstone@gmail.com',
  password: 'helloworld'
)

puts "Seed finished"
puts "#{Advertisement.count} advertisements created"
puts "#{User.count} users created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"