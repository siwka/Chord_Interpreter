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

	# augumented chord
	it { chord.chord_interpretator('C','aug',7,1,1).should eq('C E G#') }
	it { chord.chord_interpretator('C#','aug',7,1,1).should eq('C# F A') }
	it { chord.chord_interpretator('Db','aug',7,1,1).should eq('Db F A') }
	it { chord.chord_interpretator('D','aug',7,1,1).should eq('D F# A#') }
	it { chord.chord_interpretator('D#','aug',7,1,1).should eq('D# G B') }
	it { chord.chord_interpretator('Eb','aug',7,1,1).should eq('Eb G B') }	
	it { chord.chord_interpretator('E','aug',7,1,1).should eq('E G# C') }
	it { chord.chord_interpretator('F','aug',7,1,1).should eq('F A C#') }
	it { chord.chord_interpretator('F#','aug',7,1,1).should eq('F# A# D') }
	it { chord.chord_interpretator('Gb','aug',7,1,1).should eq('Gb Bb D') }
	it { chord.chord_interpretator('G','aug',7,1,1).should eq('G B D#') }
	it { chord.chord_interpretator('G#','aug',7,1,1).should eq('G# C E') }
	it { chord.chord_interpretator('Ab','aug',7,1,1).should eq('Ab C E') }	
	it { chord.chord_interpretator('A','aug',7,1,1).should eq('A C# F') }	
	it { chord.chord_interpretator('A#','aug',7,1,1).should eq('A# D F#') }
	it { chord.chord_interpretator('Bb','aug',7,1,1).should eq('Bb D F#') }
	it { chord.chord_interpretator('B','aug',7,1,1).should eq('B D# G') }

	# dimished
	it { chord.chord_interpretator('C', 'dim',7,1,1).should eq('C Eb Gb') }
	it { chord.chord_interpretator('C#','dim',7,1,1).should eq('C# E G') }
	it { chord.chord_interpretator('Db','dim',7,1,1).should eq('Db E G') }
	#it { chord.chord_interpretator('Db','min',7,1,1).should eq('Db Fb Ab') } # both Db are correct - can be considered later
	it { chord.chord_interpretator('D', 'dim',7,1,1).should eq('D F Ab') }
	it { chord.chord_interpretator('D#','dim',7,1,1).should eq('D# F# A') }
	it { chord.chord_interpretator('Eb','dim',7,1,1).should eq('Eb Gb A') }		
	it { chord.chord_interpretator('E', 'dim',7,1,1).should eq('E G Bb') }
	#it { chord.chord_interpretator('E#', 'dim',7,1,1).should eq('E# G# C') } # no dim chord -> TOKENIZATION
	it { chord.chord_interpretator('F','dim',7,1,1).should eq('F Ab B') }
	it { chord.chord_interpretator('F#','dim',7,1,1).should eq('F# A C') }
	it { chord.chord_interpretator('Gb','dim',7,1,1).should eq('Gb A C') }
	#it { chord.chord_interpretator('Gb','dim',7,1,1).should eq('Gb Bbb Db') } # both Gb are correct - can be considered later
	it { chord.chord_interpretator('G','dim',7,1,1).should eq('G Bb Db') }
	it { chord.chord_interpretator('G#','dim',7,1,1).should eq('G# B D') }
	it { chord.chord_interpretator('Ab','dim',7,1,1).should eq('Ab B D') }
	#it { chord.chord_interpretator('Ab','dim',7,1,1).should eq('Ab Cb Eb') } # both Ab are correct - can be considered later
	it { chord.chord_interpretator('A','dim',7,1,1).should eq('A C Eb') }	
	it { chord.chord_interpretator('A#','dim',7,1,1).should eq('A# C# E') }
	it { chord.chord_interpretator('Bb','dim',7,1,1).should eq('Bb Db E') }
	it { chord.chord_interpretator('B','dim',7,1,1).should eq('B D F') }		

end