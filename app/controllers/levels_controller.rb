class LevelsController < ApplicationController
    
    before_action :set_game, only: [:index, :new, :create]
    
    def index
        @levels = Level.all
    end
    
    def new
        @level = Level.new
    end
    
    def create
        @level = Level.new(level_params)
        @level.game_id = @game.id
        if @level.save
            flash[:success] = "Level Created"
            redirect_to game_path(@game)
        else
            flash[:danger] = @level.errors.full_messages.join(", ")
            render 'new'
        end
    end
    
    
    
    
    private
    def level_params
        params.require(:level).permit(:game_id, :level, :points) 
    end
    
    def set_game
        @game = Game.find(params[:game_id]) 
    end
    
    
end