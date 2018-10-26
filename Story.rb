require_relative 'TextGame'

class Story
    attr_accessor :story_text, :options

    def initialize (story_text, end_story = false)
        @story_text = story_text
        @end_story = end_story
    end


end
