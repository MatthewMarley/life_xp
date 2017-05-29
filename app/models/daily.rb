class Daily < ActiveRecord::Base
    
   belongs_to :game
   belongs_to :user
   
   #def average_points
   #   self.class.average(:points).where(:game => self.game)
   #end
    
end