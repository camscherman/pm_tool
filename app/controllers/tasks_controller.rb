class TasksController < ApplicationController
  before_action :find_task,  only:[:edit, :update]
  before_action :find_project, only:[:update, :create, :edit]
  def edit

     update
  end

  def update

    @complete = !@task.completed

    @task.update(completed: @complete)
    redirect_to project_path(@project)
  end

  def create
    @task = @project.tasks.build(task_params)

    if(@task.save)
      redirect_to project_path(@project)
    else
      @tasks = @project.tasks.order(created_at: :desc)
      render 'projects/show'
    end
  end




  private
  def task_params
    params.require(:task).permit(:title, :body)
  end

  def find_task
    @task = Task.find(params[:id])
  end

  def find_project
    @project = @task.project
  end

end
