require 'rubygame'
module GameFramework  
  class Game
    attr_reader :screen
    
    def initialize(title, width = 800, height = 600, full_screen = false, open_gl = false)
      options = [Rubygame::HWSURFACE, Rubygame::DOUBLEBUF,]
      options << Rubygame::FULLSCREEN if full_screen
      options << 
      @screen = Rubygame::Screen.new([width, height], 0, options)
      @screen.title = title
      
      @queue = Rubygame::EventQueue.new
		  @clock = Rubygame::Clock.new
		  @clock.target_framerate = 30
    end

    def start
      game_loop
    end
    

    def draw
      
    end
    
    def update
      
    end
    private

    def update_game
      update
    end

    def draw_game
      draw
      @screen.flip
    end
    def process_events
      @queue.each do |ev|
        case ev
          when Rubygame::QuitEvent
            Rubygame.quit
            exit
        end
      end
    end
    def game_loop
      loop do
        process_events
        update_game
        draw_game
        @clock.tick
      end
    end
  end
end