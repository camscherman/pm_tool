require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "validations" do
    it "requires body to be present" do
      c = Comment.new()
      c.valid?

      expect(c.errors.messages).to have_key(:body)
    end
  end
end
