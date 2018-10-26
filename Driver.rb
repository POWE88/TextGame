require_relative 'TextGame'

haunted_house = TextGame.new()

p haunted_house.character

p "Welcome! What is your name?"
haunted_house.character = gets.chomp.capitalize


p "#{haunted_house.character}, it's Halloween and your friends are..... turth or dare"

#create an Outside_story_line ojbect
outside = haunted_house.outside_story_line("text", false)

p "you chose dare. Now you at house. What you do? run, knock, kick, or ring."

user_input_1 = gets.chomp.downcase
is_true = true

while(is_true)
    if user_input_1 == "run"
        outside.run
        is_true = false
    elsif user_input_1 == "knock"
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
