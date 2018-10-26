require 'rspec'
require_relative 'Story'

describe Story do
    let (:story) {Story.new("BOO", [])}
    
    it "is a real story" do
        expect{story}.to_not raise_error
    end
end
