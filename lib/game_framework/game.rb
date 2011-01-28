require 'rubygame'
module GameFramework  
  class Game
    attr_reader :screen
    
    def initialize(title, width = 800, height = 600, full_screen = false, open_gl = false)
      options = [Rubygame::HWSERFACE, Rubygame::DOUBLEBUF,]
      options << Rubygame::FULLSCREEN if full_screen
      options << 
      @screen = Rubygame::Screen.new [width, height], 0, options 
      @screen.title = title
      
      @queue = Rubygame::EventQueue.new
		  @clock = Rubygame::Clock.new
		  @clock.target_framerate = 30
    end
    
    def start
      
    end
    
    def update_game
      
    end
    
    def draw_game
      
    end
    
    def draw
      
    end
    
    def update
      
    end
    
  end
end