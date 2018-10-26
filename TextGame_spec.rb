require 'rspec'
require_relative 'TextGame'

describe TextGame do
    let(:textgame){TextGame.new("billy", "Some response")}

    it "is a real TextGame" do
        expect{textgame}.to_not raise_error
    end

    it "can access character variable" do
        expect(textgame.character).to be_a(String)
    end

    it "can access response variable" do
        expect(textgame.response).to be_a(String)
    end

    it "can access friends array variable" do
        expect(textgame.friends).to be_a(Array)
    end
end
