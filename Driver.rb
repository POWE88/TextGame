require_relative 'TextGame'

haunted_house = TextGame.new()

p haunted_house.character

p "Welcome! What is your name?"
haunted_house.character = gets.chomp.capitalize


p "#{haunted_house.character}, Its Halloween night, dark and foggy. The streets are empty and most homes around the neighborhood have turned their porch lights off to stop the door knocks and never-ending plead for candy.  With nothing to do and no adult supervision you and your friends decided to sit on the park bench and assess the loot gathered from the long night of trick or treating. After the assessment and you and your adolescent friends have already conceded to your devilish inner beings and have consumed 10 lbs of candy each. Overloaded, bloated, and enthralled in your chocolate wasted state of mind you and your hooligan friends decide to play truth or dare"
sleep(1)
p "Feeling uninhibited by the elevated high-fructose running through your veins you decide to choose dare. What better night to get into mischievous endeavors. Your friend dares you to visit the Haunted Mansion overlooking the park on the hill. The legend has it that the old Learn Academy Mansion has valuable rubies inside worth millions of dollars. Just to be sure it’s the right one and worth the time, you take out your phone and check on Yelp for verification of this legend. Yelp rates the haunted house as 4 stars with no valuable feedback in the reviews, but one tip confirms that the rubies are there.  So, you decided to go for it. YOLO!"
sleep(1)

p "As you and your friends approach the dark and ominous building you begin to feel apprehensive about this whole situation. Your mind spirals a bit and you think maybe this was bad idea. You think to yourself, “There’s only two options, either I get the rubies and become rich or become the laughing stock of the school. What else could possibly go wrong?” Being a small town, there isn’t another option other than home school… You approach the door. Do you knock* on the door, ring* the door bell, kick* the door open, or *run for your life."

#create an Outside_story_line ojbect
outside = haunted_house.outside_story_line("text", false)

user_input_1 = gets.chomp.downcase
is_true = true

while(is_true)
    if user_input_1 == "run"
        outside.run
        is_true = false
    elsif user_input_1 == "knock"
		sleep(4)
		p "A smiling and cheerful blonde man appears at the door in a grey goblin onesie. “Hi there! Finally, someone has visited my humble abode. I was starting to fear that I made my house a bit too scary.” You realize that the man standing before you looks awfully familiar. You quickly realize that this home is the home of the new principal of your school, Mr. Damon! 'So #{haunted_house.character} what are you doing here so late at night by yourself? You should probably come in, have some hot cider, and wait here while I call your parents to come get you. Although I’m new to town I’ve got the school rolodex from the vice principal so it will only take a minute to call them.” What is your response? Yes or no?'"

        is_true = false
        outside.knock
    elsif user_input_1 == "kick"
        is_true = false
        outside.kick
    elsif user_input_1 == "ring"
        is_true = false
        outside.ring
    else
        p "Invalid response. Please enter run, knock, kick, or ring."
        is_true = true
    end
end

outside

# ---------------------------------------------------------------------------------------
inside = haunted_house.inside_story_line("text", false)
user_input_1 = gets.chomp.downcase
is_true = true

while(is_true)
	if user_input_1 == "library"
		inside.go_library
	end
end

inside
