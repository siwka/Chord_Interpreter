#require 'chord'
require_relative 'spec_helper'

describe Chord do
	let(:chord){ Chord.new }

# major
	it { chord.chord_interpretator('C','maj',0,0,0).should eq('C E G') }
	it { chord.chord_interpretator('C#','maj',0,0,0).should eq('C# F G#') }
	it { chord.chord_interpretator('Db','maj',0,0,0).should eq('Db F Ab') }
	it { chord.chord_interpretator('D','maj',0,0,0).should eq('D F# A') }
	it { chord.chord_interpretator('D#','maj',0,0,0).should eq('D# G A#') }
	it { chord.chord_interpretator('Eb','maj',0,0,0).should eq('Eb G Bb') }	
	it { chord.chord_interpretator('E','maj',0,0,0).should eq('E G# B') }
	it { chord.chord_interpretator('F','maj',0,0,0).should eq('F A C') }
	it { chord.chord_interpretator('F#','maj',0,0,0).should eq('F# A# C#') }
	it { chord.chord_interpretator('Gb','maj',0,0,0).should eq('Gb Bb Db') }
	it { chord.chord_interpretator('G','maj',0,0,0).should eq('G B D') }
	it { chord.chord_interpretator('G#','maj',0,0,0).should eq('G# C D#') }
	it { chord.chord_interpretator('Ab','maj',0,0,0).should eq('Ab C Eb') }	
	it { chord.chord_interpretator('A','maj',0,0,0).should eq('A C# E') }	
	it { chord.chord_interpretator('A#','maj',0,0,0).should eq('A# D F') }
	it { chord.chord_interpretator('Bb','maj',0,0,0).should eq('Bb D F') }
	it { chord.chord_interpretator('B','maj',0,0,0).should eq('B D# F#') }
	#it { chord.chord_interpretator('E#','maj',0,0,0).should eq('E# A C') }	notation not used -> ERROR CONTROL in TOKENIZATION
	#it { chord.chord_interpretator('B#','maj',0,0,0).should eq('B# E G') }
	#it { chord.chord_interpretator('Cb','maj',0,0,0).should eq('Cb Eb Gb') }
	#it { chord.chord_interpretator('Fb','maj',0,0,0).should eq('Fb Ab B') }

# minor
	it { chord.chord_interpretator('C', 'min',0,0,0).should eq('C Eb G') }
	it { chord.chord_interpretator('C#','min',0,0,0).should eq('C# E G#') }
	it { chord.chord_interpretator('Db','min',0,0,0).should eq('Db E Ab') }
	#it { chord.chord_interpretator('Db','min',0,0,0).should eq('Db Fb Ab') } # both Db are correct - can be considered later
	it { chord.chord_interpretator('D', 'min',0,0,0).should eq('D F A') }
	it { chord.chord_interpretator('D#','min',0,0,0).should eq('D# F# A#') }
	it { chord.chord_interpretator('Eb','min',0,0,0).should eq('Eb Gb Bb') }		
	it { chord.chord_interpretator('E', 'min',0,0,0).should eq('E G B') }
	it { chord.chord_interpretator('E#', 'min',0,0,0).should eq('E# G# C') } # theory of music notation correct is 'E# G# B#' equal in enharmony
	it { chord.chord_interpretator('F','min',0,0,0).should eq('F Ab C') }
	it { chord.chord_interpretator('F#','min',0,0,0).should eq('F# A C#') }
	it { chord.chord_interpretator('Gb','min',0,0,0).should eq('Gb A Db') }
	#it { chord.chord_interpretator('Gb','min',0,0,0).should eq('Gb Bbb Db') } # both Gb are correct - can be considered later
	it { chord.chord_interpretator('G','min',0,0,0).should eq('G Bb D') }
	it { chord.chord_interpretator('G#','min',0,0,0).should eq('G# B D#') }
	it { chord.chord_interpretator('Ab','min',0,0,0).should eq('Ab B Eb') }
	#it { chord.chord_interpretator('Ab','min',0,0,0).should eq('Ab Cb Eb') } # both Ab are correct - can be considered later
	it { chord.chord_interpretator('A','min',0,0,0).should eq('A C E') }	
	it { chord.chord_interpretator('A#','min',0,0,0).should eq('A# C# F') }
	it { chord.chord_interpretator('Bb','min',0,0,0).should eq('Bb Db F') }
	it { chord.chord_interpretator('B','min',0,0,0).should eq('B D F#') }	
	#it { chord.chord_interpretator('B#','min',0,0,0).should eq('B# D# G') } they do not exist -> ERROR CONTROL in TOKENIZATION
	#it { chord.chord_interpretator('Cb','min',0,0,0).should eq('Cb E Gb') }
	#it { chord.chord_interpretator('Fb','min',0,0,0).should eq('Fb A B') }

# augumented chord
	it { chord.chord_interpretator('C','aug',0,0,0).should eq('C E G#') }
	it { chord.chord_interpretator('C#','aug',0,0,0).should eq('C# F A') }
	it { chord.chord_interpretator('Db','aug',0,0,0).should eq('Db F A') }
	it { chord.chord_interpretator('D','aug',0,0,0).should eq('D F# A#') }
	it { chord.chord_interpretator('D#','aug',0,0,0).should eq('D# G B') }
	it { chord.chord_interpretator('Eb','aug',0,0,0).should eq('Eb G B') }	
	it { chord.chord_interpretator('E','aug',0,0,0).should eq('E G# C') }
	it { chord.chord_interpretator('F','aug',0,0,0).should eq('F A C#') }
	it { chord.chord_interpretator('F#','aug',0,0,0).should eq('F# A# D') }
	it { chord.chord_interpretator('Gb','aug',0,0,0).should eq('Gb Bb D') }
	it { chord.chord_interpretator('G','aug',0,0,0).should eq('G B D#') }
	it { chord.chord_interpretator('G#','aug',0,0,0).should eq('G# C E') }
	it { chord.chord_interpretator('Ab','aug',0,0,0).should eq('Ab C E') }	
	it { chord.chord_interpretator('A','aug',0,0,0).should eq('A C# F') }	
	it { chord.chord_interpretator('A#','aug',0,0,0).should eq('A# D F#') }
	it { chord.chord_interpretator('Bb','aug',0,0,0).should eq('Bb D F#') }
	it { chord.chord_interpretator('B','aug',0,0,0).should eq('B D# G') }

# dimished chord (triad)
	it { chord.chord_interpretator('C', 'dim',0,0,0).should eq('C Eb Gb') }
	it { chord.chord_interpretator('C#','dim',0,0,0).should eq('C# E G') }
	it { chord.chord_interpretator('Db','dim',0,0,0).should eq('Db E G') } # Ab both are correct - can be considered later
	it { chord.chord_interpretator('D', 'dim',0,0,0).should eq('D F Ab') }
	it { chord.chord_interpretator('D#','dim',0,0,0).should eq('D# F# A') }
	it { chord.chord_interpretator('Eb','dim',0,0,0).should eq('Eb Gb A') }		
	it { chord.chord_interpretator('E', 'dim',0,0,0).should eq('E G Bb') }
	#it { chord.chord_interpretator('E#', 'dim',0,0,0).should eq('E# G# C') } # no dim chord -> TOKENIZATION
	it { chord.chord_interpretator('F','dim',0,0,0).should eq('F Ab B') }
	it { chord.chord_interpretator('F#','dim',0,0,0).should eq('F# A C') }
	it { chord.chord_interpretator('Gb','dim',0,0,0).should eq('Gb A C') } # Db both are correct - can be considered later
	it { chord.chord_interpretator('G','dim',0,0,0).should eq('G Bb Db') }
	it { chord.chord_interpretator('G#','dim',0,0,0).should eq('G# B D') }
	it { chord.chord_interpretator('Ab','dim',0,0,0).should eq('Ab B D') } # Eb both are correct - can be considered later
	it { chord.chord_interpretator('A','dim',0,0,0).should eq('A C Eb') }	
	it { chord.chord_interpretator('A#','dim',0,0,0).should eq('A# C# E') }
	it { chord.chord_interpretator('Bb','dim',0,0,0).should eq('Bb Db E') }
	it { chord.chord_interpretator('B','dim',0,0,0).should eq('B D F') }

# dominant 7
	it { chord.chord_interpretator('C','dom',7,0,0).should eq('C E G Bb') }	
	it { chord.chord_interpretator('C#','dom',7,0,0).should eq('C# F G# B') }
	it { chord.chord_interpretator('Db','dom',7,0,0).should eq('Db F Ab B') }
	it { chord.chord_interpretator('D','dom',7,0,0).should eq('D F# A C') }
	it { chord.chord_interpretator('D#','dom',7,0,0).should eq('D# G A# C#') }
	it { chord.chord_interpretator('Eb','dom',7,0,0).should eq('Eb G Bb Db') }	
	it { chord.chord_interpretator('E','dom',7,0,0).should eq('E G# B D') }
	it { chord.chord_interpretator('F','dom',7,0,0).should eq('F A C Eb') }
	it { chord.chord_interpretator('F#','dom',7,0,0).should eq('F# A# C# E') }
	it { chord.chord_interpretator('Gb','dom',7,0,0).should eq('Gb Bb Db E') }
	it { chord.chord_interpretator('G','dom',7,0,0).should eq('G B D F') }
	it { chord.chord_interpretator('G#','dom',7,0,0).should eq('G# C D# F#') }
	it { chord.chord_interpretator('Ab','dom',7,0,0).should eq('Ab C Eb Gb') }	
	it { chord.chord_interpretator('A','dom',7,0,0).should eq('A C# E G') }	
	it { chord.chord_interpretator('A#','dom',7,0,0).should eq('A# D F G#') }
	it { chord.chord_interpretator('Bb','dom',7,0,0).should eq('Bb D F Ab') }
	it { chord.chord_interpretator('B','dom',7,0,0).should eq('B D# F# A') }

# major 6
	it { chord.chord_interpretator('C','maj',6,0,0).should eq('C E G A') }
	it { chord.chord_interpretator('C#','maj',6,0,0).should eq('C# F G# A#') }
	it { chord.chord_interpretator('Db','maj',6,0,0).should eq('Db F Ab Bb') }
	it { chord.chord_interpretator('D','maj',6,0,0).should eq('D F# A B') }
	it { chord.chord_interpretator('D#','maj',6,0,0).should eq('D# G A# C') }
	it { chord.chord_interpretator('Eb','maj',6,0,0).should eq('Eb G Bb C') }	
	it { chord.chord_interpretator('E','maj',6,0,0).should eq('E G# B C#') }
	it { chord.chord_interpretator('F','maj',6,0,0).should eq('F A C D') }
	it { chord.chord_interpretator('F#','maj',6,0,0).should eq('F# A# C# D#') }
	it { chord.chord_interpretator('Gb','maj',6,0,0).should eq('Gb Bb Db Eb') }
	it { chord.chord_interpretator('G','maj',6,0,0).should eq('G B D E') }
	it { chord.chord_interpretator('G#','maj',6,0,0).should eq('G# C D# F') }
	it { chord.chord_interpretator('Ab','maj',6,0,0).should eq('Ab C Eb F') }	
	it { chord.chord_interpretator('A','maj',6,0,0).should eq('A C# E F#') }	
	it { chord.chord_interpretator('A#','maj',6,0,0).should eq('A# D F G') }
	it { chord.chord_interpretator('Bb','maj',6,0,0).should eq('Bb D F G') }
	it { chord.chord_interpretator('B','maj',6,0,0).should eq('B D# F# G#') }

# minor 6
	it { chord.chord_interpretator('C', 'min',6,0,0).should eq('C Eb G A') }
	it { chord.chord_interpretator('C#','min',6,0,0).should eq('C# E G# A#') }
	it { chord.chord_interpretator('Db','min',6,0,0).should eq('Db E Ab Bb') }
	it { chord.chord_interpretator('D', 'min',6,0,0).should eq('D F A B') }
	it { chord.chord_interpretator('D#','min',6,0,0).should eq('D# F# A# C') }
	it { chord.chord_interpretator('Eb','min',6,0,0).should eq('Eb Gb Bb C') }		
	it { chord.chord_interpretator('E', 'min',6,0,0).should eq('E G B C#') }
	it { chord.chord_interpretator('E#', 'min',6,0,0).should eq('E# G# C D') }
	it { chord.chord_interpretator('F','min',6,0,0).should eq('F Ab C D') }
	it { chord.chord_interpretator('F#','min',6,0,0).should eq('F# A C# D#') }
	it { chord.chord_interpretator('Gb','min',6,0,0).should eq('Gb A Db Eb') }
	it { chord.chord_interpretator('G','min',6,0,0).should eq('G Bb D E') }
	it { chord.chord_interpretator('G#','min',6,0,0).should eq('G# B D# F') }
	it { chord.chord_interpretator('Ab','min',6,0,0).should eq('Ab B Eb F') }
	it { chord.chord_interpretator('A','min',6,0,0).should eq('A C E F#') }	
	it { chord.chord_interpretator('A#','min',6,0,0).should eq('A# C# F G') }
	it { chord.chord_interpretator('Bb','min',6,0,0).should eq('Bb Db F G') }
	it { chord.chord_interpretator('B','min',6,0,0).should eq('B D F# G#') }			

# major 7
	it { chord.chord_interpretator('C','maj',7,0,0).should eq('C E G B') }
	it { chord.chord_interpretator('C#','maj',7,0,0).should eq('C# F G# C') }
	it { chord.chord_interpretator('Db','maj',7,0,0).should eq('Db F Ab C') }
	it { chord.chord_interpretator('D','maj',7,0,0).should eq('D F# A C#') }
	it { chord.chord_interpretator('D#','maj',7,0,0).should eq('D# G A# D') }
	it { chord.chord_interpretator('Eb','maj',7,0,0).should eq('Eb G Bb D') }	
	it { chord.chord_interpretator('E','maj',7,0,0).should eq('E G# B D#') }
	it { chord.chord_interpretator('F','maj',7,0,0).should eq('F A C E') }
	it { chord.chord_interpretator('F#','maj',7,0,0).should eq('F# A# C# F') }
	it { chord.chord_interpretator('Gb','maj',7,0,0).should eq('Gb Bb Db F') }
	it { chord.chord_interpretator('G','maj',7,0,0).should eq('G B D F#') }
	it { chord.chord_interpretator('G#','maj',7,0,0).should eq('G# C D# G') }
	it { chord.chord_interpretator('Ab','maj',7,0,0).should eq('Ab C Eb G') }	
	it { chord.chord_interpretator('A','maj',7,0,0).should eq('A C# E G#') }	
	it { chord.chord_interpretator('A#','maj',7,0,0).should eq('A# D F A') }
	it { chord.chord_interpretator('Bb','maj',7,0,0).should eq('Bb D F A') }
	it { chord.chord_interpretator('B','maj',7,0,0).should eq('B D# F# A#') }

# minor 7
	it { chord.chord_interpretator('C', 'min',7,0,0).should eq('C Eb G Bb') }
	it { chord.chord_interpretator('C#','min',7,0,0).should eq('C# E G# B') }
	it { chord.chord_interpretator('Db','min',7,0,0).should eq('Db E Ab B') }
	it { chord.chord_interpretator('D', 'min',7,0,0).should eq('D F A C') }
	it { chord.chord_interpretator('D#','min',7,0,0).should eq('D# F# A# C#') }
	it { chord.chord_interpretator('Eb','min',7,0,0).should eq('Eb Gb Bb Db') }		
	it { chord.chord_interpretator('E', 'min',7,0,0).should eq('E G B D') }
	it { chord.chord_interpretator('F','min',7,0,0).should eq('F Ab C Eb') }
	it { chord.chord_interpretator('F#','min',7,0,0).should eq('F# A C# E') }
	it { chord.chord_interpretator('Gb','min',7,0,0).should eq('Gb A Db E') }
	it { chord.chord_interpretator('G','min',7,0,0).should eq('G Bb D F') }
	it { chord.chord_interpretator('G#','min',7,0,0).should eq('G# B D# F#') }
	it { chord.chord_interpretator('Ab','min',7,0,0).should eq('Ab B Eb Gb') }
	it { chord.chord_interpretator('A','min',7,0,0).should eq('A C E G') }	
	it { chord.chord_interpretator('A#','min',7,0,0).should eq('A# C# F G#') }
	it { chord.chord_interpretator('Bb','min',7,0,0).should eq('Bb Db F Ab') }
	it { chord.chord_interpretator('B','min',7,0,0).should eq('B D F# A') }

# augmented 7
	it { chord.chord_interpretator('C','aug',7,0,0).should eq('C E G# Bb') }
	it { chord.chord_interpretator('C#','aug',7,0,0).should eq('C# F A B') }
	it { chord.chord_interpretator('Db','aug',7,0,0).should eq('Db F A B') } # can add Cb (option)
	it { chord.chord_interpretator('D','aug',7,0,0).should eq('D F# A# C') }
	it { chord.chord_interpretator('D#','aug',7,0,0).should eq('D# G B C#') }
	it { chord.chord_interpretator('Eb','aug',7,0,0).should eq('Eb G B Db') }	
	it { chord.chord_interpretator('E','aug',7,0,0).should eq('E G# C D') }
	it { chord.chord_interpretator('F','aug',7,0,0).should eq('F A C# Eb') }
	it { chord.chord_interpretator('F#','aug',7,0,0).should eq('F# A# D E') }
	it { chord.chord_interpretator('Gb','aug',7,0,0).should eq('Gb Bb D E') } # can add Fb (option)
	it { chord.chord_interpretator('G','aug',7,0,0).should eq('G B D# F') }
	it { chord.chord_interpretator('G#','aug',7,0,0).should eq('G# C E F#') }
	it { chord.chord_interpretator('Ab','aug',7,0,0).should eq('Ab C E Gb') }	
	it { chord.chord_interpretator('A','aug',7,0,0).should eq('A C# F G') }	
	it { chord.chord_interpretator('A#','aug',7,0,0).should eq('A# D F# G#') }
	it { chord.chord_interpretator('Bb','aug',7,0,0).should eq('Bb D F# Ab') }
	it { chord.chord_interpretator('B','aug',7,0,0).should eq('B D# G A') }

# diminished7	
	it { chord.chord_interpretator('C', 'dim',7,0,0).should eq('C Eb Gb A') }
	it { chord.chord_interpretator('C#','dim',7,0,0).should eq('C# E G Bb') }
	it { chord.chord_interpretator('Db','dim',7,0,0).should eq('Db E G Bb') }
	it { chord.chord_interpretator('D', 'dim',7,0,0).should eq('D F Ab B') }
	it { chord.chord_interpretator('D#','dim',7,0,0).should eq('D# F# A C') }
	it { chord.chord_interpretator('Eb','dim',7,0,0).should eq('Eb Gb A C') }		
	it { chord.chord_interpretator('E', 'dim',7,0,0).should eq('E G Bb Db') }
	it { chord.chord_interpretator('F','dim',7,0,0).should eq('F Ab B D') }
	it { chord.chord_interpretator('F#','dim',7,0,0).should eq('F# A C Eb') }
	it { chord.chord_interpretator('Gb','dim',7,0,0).should eq('Gb A C Eb') }
	it { chord.chord_interpretator('G','dim',7,0,0).should eq('G Bb Db E') }
	it { chord.chord_interpretator('G#','dim',7,0,0).should eq('G# B D F') }
	it { chord.chord_interpretator('Ab','dim',7,0,0).should eq('Ab B D F') }
	it { chord.chord_interpretator('A','dim',7,0,0).should eq('A C Eb Gb') }	
	it { chord.chord_interpretator('A#','dim',7,0,0).should eq('A# C# E G') }
	it { chord.chord_interpretator('Bb','dim',7,0,0).should eq('Bb Db E G') }
	it { chord.chord_interpretator('B','dim',7,0,0).should eq('B D F Ab') }

# minor maj7
	it { chord.chord_interpretator('C', 'min','maj7',0,0).should eq('C Eb G B') }
	it { chord.chord_interpretator('C#','min','maj7',0,0).should eq('C# E G# C') }
	it { chord.chord_interpretator('Db','min','maj7',0,0).should eq('Db E Ab C') }
	it { chord.chord_interpretator('D', 'min','maj7',0,0).should eq('D F A C#') }
	it { chord.chord_interpretator('D#','min','maj7',0,0).should eq('D# F# A# D') }
	it { chord.chord_interpretator('Eb','min','maj7',0,0).should eq('Eb Gb Bb D') }		
	it { chord.chord_interpretator('E', 'min','maj7',0,0).should eq('E G B D#') }
	it { chord.chord_interpretator('F','min','maj7',0,0).should eq('F Ab C E') }
	it { chord.chord_interpretator('F#','min','maj7',0,0).should eq('F# A C# F') }
	it { chord.chord_interpretator('Gb','min','maj7',0,0).should eq('Gb A Db F') }
	it { chord.chord_interpretator('G','min','maj7',0,0).should eq('G Bb D F#') }
	it { chord.chord_interpretator('G#','min','maj7',0,0).should eq('G# B D# G') }
	it { chord.chord_interpretator('Ab','min','maj7',0,0).should eq('Ab B Eb G') }
	it { chord.chord_interpretator('A','min','maj7',0,0).should eq('A C E G#') }	
	it { chord.chord_interpretator('A#','min','maj7',0,0).should eq('A# C# F A') }
	it { chord.chord_interpretator('Bb','min','maj7',0,0).should eq('Bb Db F A') }
	it { chord.chord_interpretator('B','min','maj7',0,0).should eq('B D F# A#') }

# augmented maj7
	it { chord.chord_interpretator('C','aug','maj7',0,0).should eq('C E G# B') }
	it { chord.chord_interpretator('C#','aug','maj7',0,0).should eq('C# F A C') }
	it { chord.chord_interpretator('Db','aug','maj7',0,0).should eq('Db F A C') }
	it { chord.chord_interpretator('D','aug','maj7',0,0).should eq('D F# A# C#') }
	it { chord.chord_interpretator('D#','aug','maj7',0,0).should eq('D# G B D') }
	it { chord.chord_interpretator('Eb','aug','maj7',0,0).should eq('Eb G B D') }	
	it { chord.chord_interpretator('E','aug','maj7',0,0).should eq('E G# C D#') }
	it { chord.chord_interpretator('F','aug','maj7',0,0).should eq('F A C# E') }
	it { chord.chord_interpretator('F#','aug','maj7',0,0).should eq('F# A# D F') }
	it { chord.chord_interpretator('Gb','aug','maj7',0,0).should eq('Gb Bb D F') }
	it { chord.chord_interpretator('G','aug','maj7',0,0).should eq('G B D# F#') }
	it { chord.chord_interpretator('G#','aug','maj7',0,0).should eq('G# C E G') }
	it { chord.chord_interpretator('Ab','aug','maj7',0,0).should eq('Ab C E G') }	
	it { chord.chord_interpretator('A','aug','maj7',0,0).should eq('A C# F G#') }	
	it { chord.chord_interpretator('A#','aug','maj7',0,0).should eq('A# D F# A') }
	it { chord.chord_interpretator('Bb','aug','maj7',0,0).should eq('Bb D F# A') }
	it { chord.chord_interpretator('B','aug','maj7',0,0).should eq('B D# G A#') }
# 9th
	# it { chord.chord_interpretator('C','maj',7,9,0).should eq('C E G B D') }
	# it { chord.chord_interpretator('C', 'min',7,9,0).should eq('C Eb G Bb D') }
	# it { chord.chord_interpretator('C','aug',7,9,0).should eq('C E G# Bb D') }
	# it { chord.chord_interpretator('C', 'dim',7,9,0).should eq('C Eb Gb A D') }
	# it { chord.chord_interpretator('C', 'min','maj7',9,0).should eq('C Eb G B D') }
	# it { chord.chord_interpretator('C','aug','maj7',9,0).should eq('C E G# B D') }
	# it { chord.chord_interpretator('C', 'dim',7,'b9',0).should eq('C Eb Gb A D') }
	# it { chord.chord_interpretator('Db','maj',7,9,0).should eq('Db F Ab C Eb') }
	# it { chord.chord_interpretator('D','maj',7,9,0).should eq('D F# A C# E') }
	# it { chord.chord_interpretator('D#','aug',7,9,0).should eq('D# G B C# F') }
	# it { chord.chord_interpretator('Eb','aug',7,9,0).should eq('Eb G B Db F') }
	# it { chord.chord_interpretator('Eb','maj',7,9,0).should eq('Eb G Bb D F') }	
	# it { chord.chord_interpretator('F','maj',7,9,0).should eq('F A C E G') }
	# it { chord.chord_interpretator('F#','maj',7,9,0).should eq('F# A# C# F G#') }
	# it { chord.chord_interpretator('F#','dim',7,9,0).should eq('F# A C Eb G#') }
	# it { chord.chord_interpretator('F#','min','maj7',9,0).should eq('F# A C# F G#') }
	# it { chord.chord_interpretator('Gb','min','maj7',9,0).should eq('Gb A Db F Ab') }	
	# it { chord.chord_interpretator('Gb','dim',7,9,0).should eq('Gb A C Eb Ab') }	
	# it { chord.chord_interpretator('Gb','maj',7,9,0).should eq('Gb Bb Db F Ab') }
	# it { chord.chord_interpretator('G','maj',7,9,0).should eq('G B D F# A') }
	# it { chord.chord_interpretator('G#','min',7,9,0).should eq('G# B D# F# A#') }
	# it { chord.chord_interpretator('Ab','maj',7,9,0).should eq('Ab C Eb G Bb') }	
	# it { chord.chord_interpretator('A#','maj',7,9,0).should eq('A# D F A B#') }
	# it { chord.chord_interpretator('A#','min','maj7',9,0).should eq('A# C# F A B#') }
	# it { chord.chord_interpretator('Bb','min','maj7',9,0).should eq('Bb Db F A C') }
	# it { chord.chord_interpretator('B','min','maj7',9,0).should eq('B D F# A# C#') }	
	# it { chord.chord_interpretator('Bb','maj',7,9,0).should eq('Bb D F A C') }

end