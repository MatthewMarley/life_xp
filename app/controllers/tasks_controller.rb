class TasksController < ApplicationController
   
    def new
        @game = Game.find(params[:game_id])
        @task = Task.new
    end

    def create
        @game = Game.find(params[:game_id])
        @task = Task.new(task_params)
        @task.game_id = @game.id
        @task.user_id = current_user.id
        if @task.save
            flash[:success] = "Task Added"
            redirect_to game_path(@game)
        else
            flash[:danger] = @task.errors.full_messages.join(",")
            render 'new'
        end
    end
    
    def show
    
    end
    
    
    private
    def task_params
        params.require(:task).permit(:user_id, :game_id, :name, :points) 
    end
    
end