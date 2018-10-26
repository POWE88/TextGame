require_relative 'Story'

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

    def new_story_line(text, end_story)
        Story.new(text, end_story)
    end


end
