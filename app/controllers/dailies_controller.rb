class DailiesController < ApplicationController

    def new
        @daily = Daily.new
    end
    
    def create
        @daily = Daily.new(daily_params)
        @game = Game.find(params[:game_id])
        @daily.game_id = @game.id
        @daily.user_id = current_user.id
        if @daily.save
            flash[:success] = "Daily Update Successfully Saved"
            redirect_to game_path(@game)
        else
            flash[:danger] = @daily.errors.full_messages.join(", ")
            render 'new'
        end
    end
    
    
    private
    def daily_params
        params.require(:daily).permit(:game_id, :date, :points) 
    end

end