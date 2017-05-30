class Game < ActiveRecord::Base
    
    belongs_to :user
    has_many :tasks
    has_many :dailies
    has_many :multipliers
    
end