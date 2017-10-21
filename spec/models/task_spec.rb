require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "validations" do
    it "initializes tasks to have completed = 'false'" do
      task = FactoryGirl.create(:task)

      expect(task.completed).to be(false)
    end

  end
end
