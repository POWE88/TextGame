require_relative 'Story'

class TextGame
    attr_accessor :character, :friends, :response

    def initialize(character, response, friends=[])
        @character = character
        @response = response
        @friends = friends
    end

    def get_user_response
        @response = gets.chomp
    end

    def new_story_line(text, options)
        Story.new(text, options)
    end


end
