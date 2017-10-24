class ProjectsController < ApplicationController
    before_action :find_project, only:[:show, :update, :destroy, :edit]
    def index
        @projects = Project.all
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(get_params)
        if(@project.save)
            redirect_to projects_path
        else
            render new_project_path
        end
    end

    def show
      @task = Task.new
      @complete = Task.where("completed IS true")
      @incomplete = Task.where("completed IS false")
      @discussion = Discussion.new
      
      @discussions= @project.discussions.order(created_at: :desc)
    end

    def edit
    end

    def update
        @project.update(get_params)
    end

    def destroy
        @project.destroy
        redirect_to projects_path
    end

    private
    def get_params
        params.require(:project).permit(:title, :due_date)
    end

    def find_project
        @project = Project.find(params[:id])
    end



end
