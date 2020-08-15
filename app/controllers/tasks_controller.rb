class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]


  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
  end

   def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    # you can write this function in every method you need or just one time here and use before action --> more elegant and better refactorization like that
    @task = Task.find(params[:id])
  end
end
