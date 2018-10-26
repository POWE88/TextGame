require_relative 'TextGame'

class Story
    attr_accessor :story_text, :options

    def initialize (story_text, options=[])
        @story_text = story_text
        @options = options

    end

    def end_game
        return #end game string
    end

    def run
        end_game
    end

    def kick

    end

    def kncok
    end

    def ring
    end

    def talk
    end

    def continue

    end

end
