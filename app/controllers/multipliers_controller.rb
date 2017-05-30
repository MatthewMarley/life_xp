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
            flash[:success] = "New Multiplier Successfully Added"
            redirect_to game_multipliers_path(@game)
        else
            flash[:danger] = @multiplier.errors.full_messages.join(", ")
            render 'new'
        end
    end
    
    def edit 
        @game = Game.find(params[:game_id])
        @multiplier = Multiplier.find(params[:id])
    end
   
    def update
        @game = Game.find(params[:game_id])
        @multiplier = Multiplier.find(params[:id])
        if @multiplier.update(multiplier_params)
            flash[:success] = "Multiplier successfully amended"
            redirect_to game_multipliers_path(@game)
        else
            flash[:danger] = "Multiplier unable to be amended"
            render 'edit'
        end
    end
    
    
    
    
    
    
    def destroy
        @game = Game.find(params[:game_id])
        @multiplier = Multiplier.find(params[:id])
        if @multiplier.destroy
            flash[:success] = "Multiplier successfully deleted"
            redirect_to game_multipliers_path(@game)
        else
            flash[:danger] = @multiplication.errors.full_messages.join(", ")
            redirect_to game_multipliers_path(@game)
        end
    end
    
    
    
    private
        def multiplier_params
            params.require(:multiplier).permit(:user_id, :game_id, :multiplication, :description) 
        end
        
end