class TasksController < ApplicationController
  def find
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @tasks = Task.all
  end
end
