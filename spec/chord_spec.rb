require_relative 'spec_helper'

describe Chord do
	it "returns C E G from input 'C'" do
		chord_interpretator('C').should eq("C E G")
	end
end