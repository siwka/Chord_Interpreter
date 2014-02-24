require_relative 'spec_helper'

describe Chord do
	chord = Chord.new


	it { chord.chord_interpretator('C').should eq('C E G') }
	it { chord.chord_interpretator('D').should eq('D F# A') }
	it { chord.chord_interpretator('E').should eq('E G# B') }
	it { chord.chord_interpretator('F').should eq('F A C') }
	it { chord.chord_interpretator('G').should eq('G B D') }
	it { chord.chord_interpretator('A').should eq('A C# E') }	
	it { chord.chord_interpretator('B').should eq('B D# F#') }

	it { chord.chord_interpretator('C#').should eq('C# F G#') }
	it { chord.chord_interpretator('D#').should eq('D# G A#') }
	it { chord.chord_interpretator('E#').should eq('E# A C') }	
	it { chord.chord_interpretator('F#').should eq('F# A# C#') }
	it { chord.chord_interpretator('G#').should eq('G# C D#') }
	it { chord.chord_interpretator('A#').should eq('A# D F') }
	it { chord.chord_interpretator('B#').should eq('B# E G') }

	it { chord.chord_interpretator('Cb').should eq('Cb Eb Gb') }
	it { chord.chord_interpretator('Db').should eq('Db F Ab') }
	it { chord.chord_interpretator('Eb').should eq('Eb G Bb') }
	it { chord.chord_interpretator('Fb').should eq('Fb Ab B') }
	it { chord.chord_interpretator('Gb').should eq('Gb Bb Db') }
	it { chord.chord_interpretator('Ab').should eq('Ab C Eb') }	
	it { chord.chord_interpretator('Bb').should eq('Bb D F') }
		
end