class TasksController < ApplicationController

  # GET /
  # GET /tasks
  def index
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  def create
    @task = Task.new(params[:task])
    respond_to do |format|
      if @task.save
        format.html { redirect_to(@task, :notice => 'Task Created Successfully') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  #GET /tasks/:id
  def show
    @task = Task.find(params[:id])
    #p @task.description
  end

end
