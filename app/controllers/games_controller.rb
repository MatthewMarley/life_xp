class GamesController < ApplicationController
   
    def new
       @game = Game.new
    end
    
    def create
       @game = Game.new(game_params)
       @game.user_id = current_user.id
       if @game.save
           flash[:success] = "Game successfully saved"
           redirect_to game_path(@game)
       else
           flash[:danger] = @game.errors.full_messages.join(",")
           render 'new'
       end
    end
    
    def show
        @game = Game.find(params[:id])
        @daily = Daily.new
    end
   
   
   
   private
   def game_params
      params.require(:game).permit(:user_id, :title) 
   end
    
end