FactoryGirl.define do

  factory :user do
    name "Douglas Adams"
    sequence(:email, 100) { |n| "person#{n}@example.com" }
    password "helloworld"
    password_confirmation "helloworld"
    confirmed_at Time.now

    factory :user_with_post_and_comment do
      transient do
        posts_count 1
      end

      transient do
        comments_count 1
      end

      after(:create) do |user, eval|
        create_list(:post, eval.posts_count, user: user)
        create_list(:comment, eval.comments_count, user: user)
      end
    end
  end
end