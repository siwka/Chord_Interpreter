require_relative 'spec_helper'

describe Chord do
	chord = Chord.new

	it "returns C E G from input 'C'" do
		chord.chord_interpretator('C').should eq("C E G")
	end

	it "returns D F A from input 'D'" do
		chord.chord_interpretator('D').should eq("D Fis A")
	end
end