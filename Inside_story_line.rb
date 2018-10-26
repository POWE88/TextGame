require_relative 'Story'


class Inside_storyline < Story
    def initialize(text, end_story, restart_game = false)
        super(text, end_story)
        @riddle = # hard code riddle
        @restart_game = restart_game
    end


    def go_upstairs
        is_true = true
        riddle_answer = ""
        p "Presented with three doors. Which one do you choose, 1, 2, or 3."


        while(is_true)
            user_input = gets.chomp.downcase
            if user_input == "1"
                p "Door 1, Robs room and you die!"
                is_true = false
            elsif user_input == "2"
                p "Door 2, Rubys room. Guess what, you die!"
                is_true = false
            elsif user_input == "3"
                p "Door 3, You must answer the following riddle correctly. Say my name and I am no more. What am I?"
                user_input = gets.chomp.downcase
                if user_input == "silence"
                    p "You fucking win! Get out!"
                    @end_story = true
                    is_true = false
                else
                    p "you lose and you die"
                    @end_story = true
                    is_true = false
                end
            else
                p "You didn't give the right choice. Try again"
            end
        end
    end

    def go_library
        p "You enter the library and find the book of infinite loops. You are now stuck in an infinite loop"
        #TODO: delay
        infinite_loop
    end

    def go_basement
        is_true = true
        p "The wizard matt is mixing potions. Talk to him or nah?"

        while(is_true)
            user_input = gets.chomp.downcase
            if user_input == "yes" || user_input == "y"
                p "Fixes leg with HealLeg method, and tells you go up the stairs"
                is_true = false
                go_upstairs #Send user back upstairs
            elsif user_input == "no" || user_input == "n"
                p "run away"
                is_true = false
                @end_story = true
            else
                p "please enter yes or no"
                is_true = true
            end
        end

    end

    def infinite_loop
        sleep(1.5)
        p "You're stuck in the infinite loop!"
        infinite_loop
    end

end
