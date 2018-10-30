require_relative 'Story'

class Outside_story_line < Story
    def initialize(text)
        super(text, end_story = false)

        #Answers: 1 = "water" 2 = "the living room" 3 = 18
        @riddles= {1 => "I'm often running yet I have no legs. You need me but I don't need you. What am I?", 2 => "what room in your house do ghosts avoid?", 3 => "what number is twice the sum of its digits?"}
    end

	# def dare_choice
	# 	p "What do you choose truth or dare? "
	# 	dare_choice = ""
	# 	is_true = is_true
	#
	# 	while (is_true) do
	# 		dare_choice = gets.chomp.downcase
	# 		if dare_choice === "dare"
	# 			p "Feeling uninhibited by the elevated high-fructose running through your veins you decide to choose dare. What better night to get into mischievous endeavors. Your friend dares you to visit the Haunted Mansion overlooking the park on the hill. The legend has it that the old Learn Academy Mansion has valuable rubies inside worth millions of dollars. Just to be sure it’s the right one and worth the time, you take out your phone and check on Yelp for verification of this legend. Yelp rates the haunted house as 2 ½ stars with no valuable feedback in the reviews, but one tip confirms that the rubies are there.  So, you decided to go for it. YOLO!"
	# 			is_true = false
	# 			@end_story = true
	# 		elsif
	# 			dare_choice === "truth"
	# 			p "Feeling sick to your stomach from all of the candy you ate and knowing your friends history you just can't stomach a risky dare. Your head is spinning and you're eye site is getting blurry, before you can reply you quickly faint and hit your head on the side of near by rock. You are rushed to the hospital where you are in vegestative state. GAME OVER!"
	# 		else
	# 			p "Thats not the correct response. Please enter truth or dare. Try again."
	# 		end
	# 	end
	#
	# end

    def run
        p "You ran away. The next day at school everyone laughed and mocked you. You have been labled the biggest coward in school."
    end

    def knock
        knock_response = ""
        is_true = true

        while (is_true) do
            knock_response = gets.chomp.downcase

            if knock_response == "y" || knock_response == "yes"
                ## TODO: Finish story
                p "You go into the house and you decide to have some hot cider to warm you're aching cold body. Mr.Damon calls your parents and as you wait for them to show up you realize that he is a normal person. You explain to him why you even showed up at the house. Damon laughs at the idea of urban legend and insists that when he moved in there were absolutley no rubies in the house. To help your cause, Mr. Damon lets you take a selfie with him to prove to your friends that there was nothing there to find and that the house is not haunted by ghost and ghools."
                is_true = false
                @end_story = true
            elsif knock_response == "n" || knock_response   == "no"

				p "Shocked that someone could live in such a dingy and broken old home you make the quick calculation that the cider problem matches the mold growing on the side of the house and you decline the offer. You run off and tell your friends but they don't believe you."

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

        p " Okay you decided to ring the doorbell. Carefully thinking it through, it was probably the best decision, because someone might actually live there. Last thing you want to do is get shot for a B&E (breaking and entering). As your cold pale finger presses down on the doorbell, a loud Vatican like bell rings and echos throughout the building. The large black wood double doors open swiftly. As the doors blast open a gust of wind hits your already cold pale face. You stare into darkness for what feels like eternity. The clouds shift through the night sky and unveils the bright white full moon. The moon’s blue ray of light helps reveal the interior of the mansion foyer. It reveals a glowing figure staring back at you. The ghost of Jez grabs your arms with brute force and you quickly lose consciousness due to the sheer fear of seeing a real-lfe ghost. She quickly whisks you away into a dark room where you wake up a few moments later. It’s another dark room but this room has a few lit candles and a velvet red chaise. The room appears to be some sort of study. In the corner of the study is an authentic Chucky doll. Being the horror movie fanatic, you inspect the doll. In the dolls hand, is a post card. On the back of the card is a riddle. It says: "
		sleep(2)
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
            if ring_response == riddle_answer.to_s
                #User get's to choose option for stairs, library, or basement
                p "You answered the test correctly. The door unlocks and you make your way back to the main foyer."
            else
                #User dies or soemthing
                p "Unfortunately thats not the right answer.. What a shame. The Chucky doll was possessed by the Ghost of Jez and quickly chased you around the low-lit study. You run around trying to escape. You go for the door but of course its still locked. Chucky wakes up and pulls you down and stabs you in the eye with a flat-head screw driver. GAME OVER"
                @end_story = true
            end
        end


    def kick
            kick_response = ""

            p "Okay, you decided envoke the spirit of Bruce Lee and Chuck Norris and bust down the door with a round house power kick. The doors fly open and you stare out into darkness. Just as you step into the foyer you are immediately met by a dark figure. The dark figure emerges and yells out “Surprise!”. Alyssa stabs you in the leg and scurries away.  The pain is excruciating yet bearable. "

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
