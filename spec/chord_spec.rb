require_relative 'spec_helper'

describe Chord do
	chord = Chord.new


	it { chord.chord_interpretator('C','maj',7,1,1).should eq('C E G') }
	it { chord.chord_interpretator('D','maj',7,1,1).should eq('D F# A') }
	it { chord.chord_interpretator('E','maj',7,1,1).should eq('E G# B') }
	it { chord.chord_interpretator('F','maj',7,1,1).should eq('F A C') }
	it { chord.chord_interpretator('G','maj',7,1,1).should eq('G B D') }
	it { chord.chord_interpretator('A','maj',7,1,1).should eq('A C# E') }	
	it { chord.chord_interpretator('B','maj',7,1,1).should eq('B D# F#') }

	it { chord.chord_interpretator('C#','maj',7,1,1).should eq('C# F G#') }
	it { chord.chord_interpretator('D#','maj',7,1,1).should eq('D# G A#') }
	it { chord.chord_interpretator('E#','maj',7,1,1).should eq('E# A C') }	
	it { chord.chord_interpretator('F#','maj',7,1,1).should eq('F# A# C#') }
	it { chord.chord_interpretator('G#','maj',7,1,1).should eq('G# C D#') }
	it { chord.chord_interpretator('A#','maj',7,1,1).should eq('A# D F') }
	it { chord.chord_interpretator('B#','maj',7,1,1).should eq('B# E G') }

	it { chord.chord_interpretator('Cb','maj',7,1,1).should eq('Cb Eb Gb') }
	it { chord.chord_interpretator('Db','maj',7,1,1).should eq('Db F Ab') }
	it { chord.chord_interpretator('Eb','maj',7,1,1).should eq('Eb G Bb') }
	it { chord.chord_interpretator('Fb','maj',7,1,1).should eq('Fb Ab B') }
	it { chord.chord_interpretator('Gb','maj',7,1,1).should eq('Gb Bb Db') }
	it { chord.chord_interpretator('Ab','maj',7,1,1).should eq('Ab C Eb') }	
	it { chord.chord_interpretator('Bb','maj',7,1,1).should eq('Bb D F') }


	it { chord.chord_interpretator('C', 'min',7,1,1).should eq('C Eb G') }
	it { chord.chord_interpretator('D', 'min',7,1,1).should eq('D F A') }
	it { chord.chord_interpretator('E', 'min',7,1,1).should eq('E G B') }	
		
end