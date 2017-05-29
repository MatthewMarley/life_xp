class DailysController < ApplicationController

    def new
        @dailytable = DailyTable.new
    end
    
    def create
        @dailytable = DailyTable.new(daily_table_params)
        @game = Game.find(params[:game_id])
        @dailytable.game_id = @game.id
        if @dailytable.save
            flash[:success] = "Daily Update Successfully Saved"
            redirect_to game_path(@game)
        else
            flash[:danger] = @dailytable.errors.full_messages.join(", ")
            render 'new'
        end
    end
    
    
    private
    def daily_table_params
        params.require(daily_table).permit(:game_id, :date, :points) 
    end

end