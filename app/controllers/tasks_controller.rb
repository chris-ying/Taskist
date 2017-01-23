class TasksController < ApplicationController
    
    layout 'master'
    
  def index
    @tasks = Task.all
  end
    
  def create
    @task = Task.new(task_params)
		if @task.save
            flash[:notice] = "Task created successfully!"
            redirect_to :action => "index"
        else
            render('new')
        end
  end
    
  def destroy
    @task = Task.find(params[:id])
        @task.destroy
        flash[:notice] = "Task deleted successfully!"
        redirect_to @task
   end
    
  def show
    @task = Task.find(params[:id])
  end
    
  private 
    def task_params
      params.require(:task).permit(:title, :description)            
    end
    
end
