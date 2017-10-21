require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

  describe '#new' do
    it "renders the new template" do
      get(:new)

      expect(response).to render_template(:new)
    end

    it "creates an empty instance variable for project" do
      get(:new)

      expect(assigns(:project)).to be_a_new(Project)
    end

  end

  describe '#index' do
    it "gets an array of all of the Projects in the database" do
      FactoryGirl.create(:project)

      get(:index)

      expect(assigns(:projects)).to match_array(Project.all)
    end

    it "renders the index view" do
      get(:index)

      expect(response).to render_template(:index)
    end

  end

  describe '#show' do
    it "creates an an instance variable of the model to be shown" do
      project = FactoryGirl.create(:project)

      get :show, params: {id: project}

      expect(assigns(:project)).to be_an_instance_of(Project)
      expect(assigns(:project)).to_not be_a_new(Project)

    end

  end

end
