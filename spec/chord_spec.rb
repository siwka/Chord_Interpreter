require_relative 'spec_helper'

describe Chord do
	chord = Chord.new

	# major
	it { chord.chord_interpretator('C','maj',7,1,1).should eq('C E G') }
	it { chord.chord_interpretator('C#','maj',7,1,1).should eq('C# F G#') }
	it { chord.chord_interpretator('Db','maj',7,1,1).should eq('Db F Ab') }
	it { chord.chord_interpretator('D','maj',7,1,1).should eq('D F# A') }
	it { chord.chord_interpretator('D#','maj',7,1,1).should eq('D# G A#') }
	it { chord.chord_interpretator('Eb','maj',7,1,1).should eq('Eb G Bb') }	
	it { chord.chord_interpretator('E','maj',7,1,1).should eq('E G# B') }
	it { chord.chord_interpretator('F','maj',7,1,1).should eq('F A C') }
	it { chord.chord_interpretator('F#','maj',7,1,1).should eq('F# A# C#') }
	it { chord.chord_interpretator('Gb','maj',7,1,1).should eq('Gb Bb Db') }
	it { chord.chord_interpretator('G','maj',7,1,1).should eq('G B D') }
	it { chord.chord_interpretator('G#','maj',7,1,1).should eq('G# C D#') }
	it { chord.chord_interpretator('Ab','maj',7,1,1).should eq('Ab C Eb') }	
	it { chord.chord_interpretator('A','maj',7,1,1).should eq('A C# E') }	
	it { chord.chord_interpretator('A#','maj',7,1,1).should eq('A# D F') }
	it { chord.chord_interpretator('Bb','maj',7,1,1).should eq('Bb D F') }
	it { chord.chord_interpretator('B','maj',7,1,1).should eq('B D# F#') }
	#it { chord.chord_interpretator('E#','maj',7,1,1).should eq('E# A C') }	they do not exist -> ERROR CONTROL in TOKENIZATION
	#it { chord.chord_interpretator('B#','maj',7,1,1).should eq('B# E G') }
	#it { chord.chord_interpretator('Cb','maj',7,1,1).should eq('Cb Eb Gb') }
	#it { chord.chord_interpretator('Fb','maj',7,1,1).should eq('Fb Ab B') }

	# minor
	it { chord.chord_interpretator('C', 'min',7,1,1).should eq('C Eb G') }
	it { chord.chord_interpretator('C#','min',7,1,1).should eq('C# E G#') }
	it { chord.chord_interpretator('Db','min',7,1,1).should eq('Db E Ab') }
	#it { chord.chord_interpretator('Db','min',7,1,1).should eq('Db Fb Ab') } # both Db are correct - can be considered later
	it { chord.chord_interpretator('D', 'min',7,1,1).should eq('D F A') }
	it { chord.chord_interpretator('D#','min',7,1,1).should eq('D# F# A#') }
	it { chord.chord_interpretator('Eb','min',7,1,1).should eq('Eb Gb Bb') }		
	it { chord.chord_interpretator('E', 'min',7,1,1).should eq('E G B') }
	it { chord.chord_interpretator('E#', 'min',7,1,1).should eq('E# G# C') } # theory of music notation correct is 'E# G# B#' equal in enharmony
	it { chord.chord_interpretator('F','min',7,1,1).should eq('F Ab C') }
	it { chord.chord_interpretator('F#','min',7,1,1).should eq('F# A C#') }
	it { chord.chord_interpretator('Gb','min',7,1,1).should eq('Gb A Db') }
	#it { chord.chord_interpretator('Gb','min',7,1,1).should eq('Gb Bbb Db') } # both Gb are correct - can be considered later
	it { chord.chord_interpretator('G','min',7,1,1).should eq('G Bb D') }
	it { chord.chord_interpretator('G#','min',7,1,1).should eq('G# B D#') }
	it { chord.chord_interpretator('Ab','min',7,1,1).should eq('Ab B Eb') }
	#it { chord.chord_interpretator('Ab','min',7,1,1).should eq('Ab Cb Eb') } # both Ab are correct - can be considered later
	it { chord.chord_interpretator('A','min',7,1,1).should eq('A C E') }	
	it { chord.chord_interpretator('A#','min',7,1,1).should eq('A# C# F') }
	it { chord.chord_interpretator('Bb','min',7,1,1).should eq('Bb Db F') }
	it { chord.chord_interpretator('B','min',7,1,1).should eq('B D F#') }	
	#it { chord.chord_interpretator('B#','min',7,1,1).should eq('B# D# G') } they do not exist -> ERROR CONTROL in TOKENIZATION
	#it { chord.chord_interpretator('Cb','min',7,1,1).should eq('Cb E Gb') }
	#it { chord.chord_interpretator('Fb','min',7,1,1).should eq('Fb A B') }
end