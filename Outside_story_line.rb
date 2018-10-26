require_relative 'Story'

class Outside_story_line < Story
    def initialize(text, end_story)
        super(text, end_story)

        #Answers: 1 = "water" 2 = "the living room" 3 = 18
        @riddles= {1 => "I'm often running yet I have no legs. You need me but I don't need you. What am I?", 2 => "what room in your house do ghosts avoid?", 3 => "what number is twice the sum of its digits?"}

    end

    def run
        p "You ran away. The next day at school everyone laughs and you, sissy."
    end

    def knock
        knock_response = ""
        is_true = true

        p "Damon opens the door with a smile and offers you candy. He also invites you in for some hot cider. Do you want to go in? (y/n)"

        while (is_true) do
            knock_response = gets.chomp.downcase

            if knock_response == "y" || knock_response == "yes"
                ## TODO: Finish story
                p "You go into the house. Damon is a normal person. He..."
                is_true = false
                @end_story = true
            elsif knock_response == "n" || knock_response   == "no"
                run
                is_true = false
                @end_story = true
            else
                p "Please enter y/n"
                is_true = true
            end
        end
    end

    def ring
        ring_response = ""
        rand_num = rand 4
        riddle_answer = ""

        p "The ghost of Jez grabs you in and locks you in a room. You must answer the riddle correctly..."

        p @riddles[rand_num]

        #figure out what the ansewr whould be based on rand_num
        if rand_num == 1
            riddle_answer = "water"
        elsif rand_num == 2
            riddle_answer = "living room"
        else
            riddle_answer = "18"
        end

            ring_response = gets.chomp.downcase
            if ring_response == riddle_answer
                #User get's to choose option for stairs, library, or basement
                p "you answered the test correctly"
            else
                #User dies or soemthing
                p "boo you suck. now you're dead"
                @end_story = true
            end
        end


    def kick
            kick_response = ""

            p "Alyssa pops out and stabs you in the leg. She scurries along and disappears into the darkness. "

            p "Do you want to continue?"
                kick_response = gets.chomp.downcase

                if kick_response == "y" || kick_response == "yes"
                    #User get's to choose option for stairs, library, or basement
                    p "Now that you are inside choose where you want to go. Do you want to visit the library, go the basement, or go upstairs?"
                    # # TODO:  Call instance of inside_storyline
                else
                    #User dies or soemthing
                    @end_story = true
                end

    end
end

outside = Outside_story_line.new("SomeText", false, [])

outside.ring
