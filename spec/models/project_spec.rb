require 'rails_helper'

RSpec.describe Project, type: :model do
  describe "authorizations" do
    it "requires the title to be present" do
      c= Project.new(FactoryGirl.attributes_for(:project))
      c.title = nil
      c.valid?

      expect(c.errors.messages).to have_key(:title)
    end

    it "requires the title to be unique" do
      c= Project.new(FactoryGirl.attributes_for(:project))
      c.title = "original"
      c.save
      d= Project.new(FactoryGirl.attributes_for(:project))
      d.title = "original"
      d.valid?

      expect(d.errors.messages).to have_key(:title)

    end


  end

end
