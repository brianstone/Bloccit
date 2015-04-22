require 'rails_helper'

describe Vote do
  describe "validations" do

    before do
      @post = Post.create(title: 'Post title', body: 'Post bodies must be pretty long.')
      
    end
        


    describe "#value" do
      it "will allow a value of -1" do
        vote = @post.votes.build(value: -1)
        expect(vote.valid?).to eq(true)
      end

      it "will allow a value of 1" do
        vote = @post.votes.build(value: 1)
        expect(vote.valid?).to eq(true)
      end

      it "does not allow a value of 2" do
        vote = @post.votes.build(value: 2)
        expect(vote.valid?).to eq(false)
      end

    end
  end
end