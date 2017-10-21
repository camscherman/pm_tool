class DiscussionsController < ApplicationController
  before_action :find_project, only: [:create, :update]
  before_action :find_discussion, only: [:show, :edit, :destroy, :update]
  def create
    @discussion = @project.discussions.build(discussion_params)
    if @discussion.save
      redirect_to project_path(@project)
    else
      render '/projects/show'
    end
  end

  def show
  end

  private
  def discussion_params
    params.require(:discussion).permit(:title, :description)
  end

  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_discussion
    @discussion = Discussion.find(params[:id])
  end
end
