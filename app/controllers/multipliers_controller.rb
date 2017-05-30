class MultipliersController < ApplicationController
    
    def index
        @game = Game.find(params[:game_id])
        @multiplier = Multiplier.new
    end
    
    def new
        @game = Game.find(params[:game_id])
        @multiplier = Multiplier.new
    end
    
    def create
        @game = Game.find(params[:game_id])
        @multiplier = Multiplier.new(multiplier_params)
        @multiplier.game_id = @game.id
        @multiplier.user_id = current_user.id
        if @multiplier.save
            flash[:success] = "New Multiplier successfully added"
            redirect_to game_multipliers_path(@game)
        else
            flash[:danger] = @multiplier.errors.full_messages.join(", ")
            render 'new'
        end
    end
    
    
    
    
    private
        def multiplier_params
            params.require(:multiplier).permit(:user_id, :game_id, :multiplication, :description) 
        end
        
end