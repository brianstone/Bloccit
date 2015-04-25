require 'rails_helper'

describe User do

  include TestFactories
  include Device::TestHelpers

  describe "#favorited(post)" do

    before do
      @post = associated_post
      @user = authenticated_user
      sign_in @user

    it "returns `nil` if the user has not favorited the post" do
      expect( @user.favorited(@post).to be_nil )
    end

    xit "returns the appropriate favorite if it exists" do

    end
  end
end