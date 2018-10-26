require_relative 'Story'
require_relative 'Outside_story_line'
require_relative 'Inside_story_line'

class TextGame
    attr_accessor :character, :friends, :response

    def initialize(character = "default_character", response="default_response", friends=[])
        @character = character
        @response = response
        @friends = friends
    end

    def get_user_response
        @response = gets.chomp
    end

    def outside_story_line(text, end_story)
        Outside_story_line.new(text)
    end

    def inside_story_line(text, end_story)
        Inside_story_line.new(text, end_story)
    end


end
