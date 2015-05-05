require 'rails_helper'

describe User do

  include TestFactories

  describe "#favorited(@post)" do

    before do
      @post = associated_post
      @user = authenticated_user
    end

    it "returns `nil` if the user has not favorited the post" do
      expect( @user.favorited(@post) ).to be_nil
    end

    it "returns the appropriate favorite if it exists" do
      favorite = Favorite.create( user: @user, post: @post )
      expect( @user.favorited(@post) ).to eq( favorite )
    end

    it "returns `nil` if the user has favorited another post" do
      another_post = associated_post
      favorite = Favorite.create( user: @user, post: another_post )
      expect( @user.favorited(@post) ).to be_nil
    end
  end

  describe ".top_rated" do

    before do
      @user1 = create(:user_with_post_and_comment)

      @user2 = create(:user_with_post_and_comment, comments_count: 2)
    end

    it "returns users ordered by comments + posts" do
      expect( User.top_rated ).to eq([@user2, @user1])
    end

    it "store a `posts_count` on user" do
      users = User.top_rated
      expect( users.first.posts_count ).to eq(1)
    end

    it "stores a `comments_count` on user" do
      users = User.top_rated
      expect( users.first.comments_count ).to eq(2)
    end
  end
end