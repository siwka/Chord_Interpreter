require 'chord_parser'
require 'chord_interpreter'

describe ChordInterpreter do
	let(:chord) { chord = ChordParser::Chord.new }

# major	triad
	it {
    chord.root = 'C'
    chord.quality = 'maj'
    chord.added = ''
    described_class.interpret(chord).should eq('C E G')
  }

  it {
    chord.root = 'D#'
    chord.quality = 'maj'
    chord.added = ''  
    described_class.interpret(chord).should eq('D# G A#')
  }

  it {
    chord.root = 'Ab'
    chord.quality = 'maj'
    chord.added = ''  
    described_class.interpret(chord).should eq('Ab C Eb')
  }

# minor triad
  it {
    chord.root = 'Db'
    chord.quality = 'min'
    chord.added = ''  
    described_class.interpret(chord).should eq('Db E Ab')
  }

  it {
    chord.root = 'F#'
    chord.quality = 'min'
    chord.added = ''  
    described_class.interpret(chord).should eq('F# A C#')
  }

  it {
    chord.root = 'Bb'
    chord.quality = 'min'
    chord.added = ''  
    described_class.interpret(chord).should eq('Bb Db F')
  }

# augmented triad
  it {
    chord.root = 'F'
    chord.quality = 'aug'
    chord.added = ''  
    described_class.interpret(chord).should eq('F A C#') 
  }

  it {
    chord.root = 'G'
    chord.quality = 'aug'
    chord.added = ''  
    described_class.interpret(chord).should eq('G B D#') 
  }

  it {
    chord.root = 'Ab'
    chord.quality = 'aug'
    chord.added = ''  
    described_class.interpret(chord).should eq('Ab C E')
  }

# diminished triad
  it {
    chord.root = 'E'
    chord.quality = 'dim'
    chord.added = ''  
    described_class.interpret(chord).should eq('E G Bb')
  }

  it {
    chord.root = 'Gb'
    chord.quality = 'dim'
    chord.added = ''  
    described_class.interpret(chord).should eq('Gb A C')
  }

  it {
    chord.root = 'B'
    chord.quality = 'dim'
    chord.added = ''  
    described_class.interpret(chord).should eq('B D F')
  }

# dominant seventh chord
  it {
    chord.root = 'C'
    chord.quality = 'dom'
    chord.added = '7'  
    described_class.interpret(chord).should eq('C E G Bb') 
  }

  it {
    chord.root = 'Eb'
    chord.quality = 'dom'
    chord.added = '7'  
    described_class.interpret(chord).should eq('Eb G Bb Db') 
  }

  it {
    chord.root = 'G'
    chord.quality = 'dom'
    chord.added = '7'  
    described_class.interpret(chord).should eq('G B D F') 
  }
  
# major sixth chord
  it {
    chord.root = 'F#'
    chord.quality = 'maj'
    chord.added = '6'  
    described_class.interpret(chord).should eq('F# A# C# D#') 
  }

  it {
    chord.root = 'Gb'
    chord.quality = 'maj'
    chord.added = '6'  
    described_class.interpret(chord).should eq('Gb Bb Db Eb')
  }

  it {
    chord.root = 'A#'
    chord.quality = 'maj'
    chord.added = '6'  
    described_class.interpret(chord).should eq('A# D F G')
  }

# minor sixth chord
  it {
    chord.root = 'E#'
    chord.quality = 'min'
    chord.added = '6'  
    described_class.interpret(chord).should eq('E# G# C D')
  }

  it {
    chord.root = 'F'
    chord.quality = 'min'
    chord.added = '6'  
    described_class.interpret(chord).should eq('F Ab C D')
  }

  it {
    chord.root = 'Gb'
    chord.quality = 'min'
    chord.added = '6'  
    described_class.interpret(chord).should eq('Gb A Db Eb')
  }

# major seventh chord
  it {
    chord.root = 'C#'
    chord.quality = 'maj'
    chord.added = '7'  
    described_class.interpret(chord).should eq('C# F G# C')
  }

  it {
    chord.root = 'F#'
    chord.quality = 'maj'
    chord.added = '7'  
    described_class.interpret(chord).should eq('F# A# C# F')
  }

  it {
    chord.root = 'B'
    chord.quality = 'maj'
    chord.added = '7'  
    described_class.interpret(chord).should eq('B D# F# A#')
  }    

# minor seventh chord
  it {
    chord.root = 'Db'
    chord.quality = 'min'
    chord.added = '7'  
    described_class.interpret(chord).should eq('Db E Ab B')
  }

  it {
    chord.root = 'F'
    chord.quality = 'min'
    chord.added = '7'  
    described_class.interpret(chord).should eq('F Ab C Eb')
  }

  it {
    chord.root = 'G#'
    chord.quality = 'min'
    chord.added = '7'  
    described_class.interpret(chord).should eq('G# B D# F#')
  }

# augmented seventh chord
  it {
    chord.root = 'F#'
    chord.quality = 'aug'
    chord.added = '7'  
    described_class.interpret(chord).should eq('F# A# D E')
  }

  it {
    chord.root = 'G'
    chord.quality = 'aug'
    chord.added = '7'  
    described_class.interpret(chord).should eq('G B D# F')
  }

  it {
    chord.root = 'Bb'
    chord.quality = 'aug'
    chord.added = '7'  
    described_class.interpret(chord).should eq('Bb D F# Ab')
  }  

# diminished seventh chord
  it {
    chord.root = 'Db'
    chord.quality = 'dim'
    chord.added = '7'  
    described_class.interpret(chord).should eq('Db E G Bb') 
  }

  it {
    chord.root = 'F'
    chord.quality = 'dim'
    chord.added = '7'  
    described_class.interpret(chord).should eq('F Ab B D')
  }

    it {
    chord.root = 'A#'
    chord.quality = 'dim'
    chord.added = '7'  
    described_class.interpret(chord).should eq('A# C# E G')
  }  

# minor-major seventh chord
  it {
    chord.root = 'C#'
    chord.quality = 'min'
    chord.added = 'maj7'  
    described_class.interpret(chord).should eq('C# E G# C')
  }

  it {
    chord.root = 'Db'
    chord.quality = 'min'
    chord.added = 'maj7'  
    described_class.interpret(chord).should eq('Db E Ab C')
  }

  it {
    chord.root = 'G'
    chord.quality = 'min'
    chord.added = 'maj7'  
    described_class.interpret(chord).should eq('G Bb D F#')
  }      

# augmented-major seventh (major seventh sharp five)
  it {
    chord.root = 'E'
    chord.quality = 'aug'
    chord.added = 'maj7'  
    described_class.interpret(chord).should eq('E G# C D#')
  }

  it {
    chord.root = 'G#'
    chord.quality = 'aug'
    chord.added = 'maj7'  
    described_class.interpret(chord).should eq('G# C E G')
  }
 
  it {
    chord.root = 'Bb'
    chord.quality = 'aug'
    chord.added = 'maj7'  
    described_class.interpret(chord).should eq('Bb D F# A')
  }

# half-diminished seventh (minor seventh flat five)
it {
    chord.root = 'C#'
    chord.quality = 'min7'
    chord.added = 'dim7'  
    described_class.interpret(chord).should eq('C# E G B')
  }

it {
    chord.root = 'E'
    chord.quality = 'min7'
    chord.added = 'dim7'  
    described_class.interpret(chord).should eq('E G Bb D')
  }

it {
    chord.root = 'Gb'
    chord.quality = 'min7'
    chord.added = 'dim7'  
    described_class.interpret(chord).should eq('Gb A C E')
  }

it {
    chord.root = 'A'
    chord.quality = 'min7'
    chord.added = 'dim7'  
    described_class.interpret(chord).should eq('A C Eb G')
  }

  
# Reason to keep expecting results is that in music notation the same note can have 
# few different names. Name depends of combination in scale or how chord is built.
#________________________________________________________________________
# # major
# 	it { described_class.interpret('C','maj','').should eq('C E G') }
# 	it { described_class.interpret('C#','maj','').should eq('C# F G#') }
# 	it { described_class.interpret('Db','maj','').should eq('Db F Ab') }
# 	it { described_class.interpret('D','maj','').should eq('D F# A') }
# 	it { described_class.interpret('D#','maj','').should eq('D# G A#') }
# 	it { described_class.interpret('Eb','maj','').should eq('Eb G Bb') }	
# 	it { described_class.interpret('E','maj','').should eq('E G# B') }
# 	it { described_class.interpret('F','maj','').should eq('F A C') }
# 	it { described_class.interpret('F#','maj','').should eq('F# A# C#') }
# 	it { described_class.interpret('Gb','maj','').should eq('Gb Bb Db') }
# 	it { described_class.interpret('G','maj','').should eq('G B D') }
# 	it { described_class.interpret('G#','maj','').should eq('G# C D#') }
# 	it { described_class.interpret('Ab','maj','').should eq('Ab C Eb') }	
# 	it { described_class.interpret('A','maj','').should eq('A C# E') }	
# 	it { described_class.interpret('A#','maj','').should eq('A# D F') }
# 	it { described_class.interpret('Bb','maj','').should eq('Bb D F') }
# 	it { described_class.interpret('B','maj','').should eq('B D# F#') }

# # minor
# 	it { described_class.interpret('C', 'min','').should eq('C Eb G') }
# 	it { described_class.interpret('C#','min','').should eq('C# E G#') }
# 	it { described_class.interpret('Db','min','').should eq('Db E Ab') }
# 	#it { described_class.interpret('Db','min','').should eq('Db Fb Ab') } # both Db are correct - can be considered later
# 	it { described_class.interpret('D', 'min','').should eq('D F A') }
# 	it { described_class.interpret('D#','min','').should eq('D# F# A#') }
# 	it { described_class.interpret('Eb','min','').should eq('Eb Gb Bb') }		
# 	it { described_class.interpret('E', 'min','').should eq('E G B') }
# 	it { described_class.interpret('E#', 'min','').should eq('E# G# C') } # theory of music notation correct is 'E# G# B#' equal in enharmony
# 	it { described_class.interpret('F','min','').should eq('F Ab C') }
# 	it { described_class.interpret('F#','min','').should eq('F# A C#') }
# 	it { described_class.interpret('Gb','min','').should eq('Gb A Db') }
# 	#it { described_class.interpret('Gb','min','').should eq('Gb Bbb Db') } # both Gb are correct - can be considered later
# 	it { described_class.interpret('G','min','').should eq('G Bb D') }
# 	it { described_class.interpret('G#','min','').should eq('G# B D#') }
# 	it { described_class.interpret('Ab','min','').should eq('Ab B Eb') }
# 	#it { described_class.interpret('Ab','min','').should eq('Ab Cb Eb') } # both Ab are correct - can be considered later
# 	it { described_class.interpret('A','min','').should eq('A C E') }	
# 	it { described_class.interpret('A#','min','').should eq('A# C# F') }
# 	it { described_class.interpret('Bb','min','').should eq('Bb Db F') }
# 	it { described_class.interpret('B','min','').should eq('B D F#') }	
# 	#it { described_class.interpret('B#','min','').should eq('B# D# G') } they do not exist -> ERROR CONTROL in TOKENIZATION
# 	#it { described_class.interpret('Cb','min','').should eq('Cb E Gb') }
# 	#it { described_class.interpret('Fb','min','').should eq('Fb A B') }

# # augumented chord
# 	it { described_class.interpret('C','aug','').should eq('C E G#') }
# 	it { described_class.interpret('C#','aug','').should eq('C# F A') }
# 	it { described_class.interpret('Db','aug','').should eq('Db F A') }
# 	it { described_class.interpret('D','aug','').should eq('D F# A#') }
# 	it { described_class.interpret('D#','aug','').should eq('D# G B') }
# 	it { described_class.interpret('Eb','aug','').should eq('Eb G B') }	
# 	it { described_class.interpret('E','aug','').should eq('E G# C') }
# 	it { described_class.interpret('F','aug','').should eq('F A C#') }
# 	it { described_class.interpret('F#','aug','').should eq('F# A# D') }
# 	it { described_class.interpret('Gb','aug','').should eq('Gb Bb D') }
# 	it { described_class.interpret('G','aug','').should eq('G B D#') }
# 	it { described_class.interpret('G#','aug','').should eq('G# C E') }
# 	it { described_class.interpret('Ab','aug','').should eq('Ab C E') }	
# 	it { described_class.interpret('A','aug','').should eq('A C# F') }	
# 	it { described_class.interpret('A#','aug','').should eq('A# D F#') }
# 	it { described_class.interpret('Bb','aug','').should eq('Bb D F#') }
# 	it { described_class.interpret('B','aug','').should eq('B D# G') }

# # dimished chord (triad)
# 	it { described_class.interpret('C', 'dim','').should eq('C Eb Gb') }
# 	it { described_class.interpret('C#','dim','').should eq('C# E G') }
# 	it { described_class.interpret('Db','dim','').should eq('Db E G') } # Ab both are correct - can be considered later
# 	it { described_class.interpret('D', 'dim','').should eq('D F Ab') }
# 	it { described_class.interpret('D#','dim','').should eq('D# F# A') }
# 	it { described_class.interpret('Eb','dim','').should eq('Eb Gb A') }		
# 	it { described_class.interpret('E', 'dim','').should eq('E G Bb') }
# 	#it { described_class.interpret('E#', 'dim','').should eq('E# G# C') } # no dim chord -> TOKENIZATION
# 	it { described_class.interpret('F','dim','').should eq('F Ab B') }
# 	it { described_class.interpret('F#','dim','').should eq('F# A C') }
# 	it { described_class.interpret('Gb','dim','').should eq('Gb A C') } # Db both are correct - can be considered later
# 	it { described_class.interpret('G','dim','').should eq('G Bb Db') }
# 	it { described_class.interpret('G#','dim','').should eq('G# B D') }
# 	it { described_class.interpret('Ab','dim','').should eq('Ab B D') } # Eb both are correct - can be considered later
# 	it { described_class.interpret('A','dim','').should eq('A C Eb') }	
# 	it { described_class.interpret('A#','dim','').should eq('A# C# E') }
# 	it { described_class.interpret('Bb','dim','').should eq('Bb Db E') }
# 	it { described_class.interpret('B','dim','').should eq('B D F') }

# # dominant 7
# 	it { described_class.interpret('C','dom','7').should eq('C E G Bb') }	
# 	it { described_class.interpret('C#','dom','7').should eq('C# F G# B') }
# 	it { described_class.interpret('Db','dom','7').should eq('Db F Ab B') }
# 	it { described_class.interpret('D','dom','7').should eq('D F# A C') }
# 	it { described_class.interpret('D#','dom','7').should eq('D# G A# C#') }
# 	it { described_class.interpret('Eb','dom','7').should eq('Eb G Bb Db') }	
# 	it { described_class.interpret('E','dom','7').should eq('E G# B D') }
# 	it { described_class.interpret('F','dom','7').should eq('F A C Eb') }
# 	it { described_class.interpret('F#','dom','7').should eq('F# A# C# E') }
# 	it { described_class.interpret('Gb','dom','7').should eq('Gb Bb Db E') }
# 	it { described_class.interpret('G','dom','7').should eq('G B D F') }
# 	it { described_class.interpret('G#','dom','7').should eq('G# C D# F#') }
# 	it { described_class.interpret('Ab','dom','7').should eq('Ab C Eb Gb') }	
# 	it { described_class.interpret('A','dom','7').should eq('A C# E G') }	
# 	it { described_class.interpret('A#','dom','7').should eq('A# D F G#') }
# 	it { described_class.interpret('Bb','dom','7').should eq('Bb D F Ab') }
# 	it { described_class.interpret('B','dom','7').should eq('B D# F# A') }

# # major 6
# 	it { described_class.interpret('C','maj','6').should eq('C E G A') }
# 	it { described_class.interpret('C#','maj','6').should eq('C# F G# A#') }
# 	it { described_class.interpret('Db','maj','6').should eq('Db F Ab Bb') }
# 	it { described_class.interpret('D','maj','6').should eq('D F# A B') }
# 	it { described_class.interpret('D#','maj','6').should eq('D# G A# C') }
# 	it { described_class.interpret('Eb','maj','6').should eq('Eb G Bb C') }	
# 	it { described_class.interpret('E','maj','6').should eq('E G# B C#') }
# 	it { described_class.interpret('F','maj','6').should eq('F A C D') }
# 	it { described_class.interpret('F#','maj','6').should eq('F# A# C# D#') }
# 	it { described_class.interpret('Gb','maj','6').should eq('Gb Bb Db Eb') }
# 	it { described_class.interpret('G','maj','6').should eq('G B D E') }
# 	it { described_class.interpret('G#','maj','6').should eq('G# C D# F') }
# 	it { described_class.interpret('Ab','maj','6').should eq('Ab C Eb F') }	
# 	it { described_class.interpret('A','maj','6').should eq('A C# E F#') }	
# 	it { described_class.interpret('A#','maj','6').should eq('A# D F G') }
# 	it { described_class.interpret('Bb','maj','6').should eq('Bb D F G') }
# 	it { described_class.interpret('B','maj','6').should eq('B D# F# G#') }

# # minor 6
# 	it { described_class.interpret('C', 'min','6').should eq('C Eb G A') }
# 	it { described_class.interpret('C#','min','6').should eq('C# E G# A#') }
# 	it { described_class.interpret('Db','min','6').should eq('Db E Ab Bb') }
# 	it { described_class.interpret('D', 'min','6').should eq('D F A B') }
# 	it { described_class.interpret('D#','min','6').should eq('D# F# A# C') }
# 	it { described_class.interpret('Eb','min','6').should eq('Eb Gb Bb C') }		
# 	it { described_class.interpret('E', 'min','6').should eq('E G B C#') }
# 	it { described_class.interpret('E#', 'min','6').should eq('E# G# C D') }
# 	it { described_class.interpret('F','min','6').should eq('F Ab C D') }
# 	it { described_class.interpret('F#','min','6').should eq('F# A C# D#') }
# 	it { described_class.interpret('Gb','min','6').should eq('Gb A Db Eb') }
# 	it { described_class.interpret('G','min','6').should eq('G Bb D E') }
# 	it { described_class.interpret('G#','min','6').should eq('G# B D# F') }
# 	it { described_class.interpret('Ab','min','6').should eq('Ab B Eb F') }
# 	it { described_class.interpret('A','min','6').should eq('A C E F#') }	
# 	it { described_class.interpret('A#','min','6').should eq('A# C# F G') }
# 	it { described_class.interpret('Bb','min','6').should eq('Bb Db F G') }
# 	it { described_class.interpret('B','min','6').should eq('B D F# G#') }			

# # major 7
# 	it { described_class.interpret('C','maj','7').should eq('C E G B') }
# 	it { described_class.interpret('C#','maj','7').should eq('C# F G# C') }
# 	it { described_class.interpret('Db','maj','7').should eq('Db F Ab C') }
# 	it { described_class.interpret('D','maj','7').should eq('D F# A C#') }
# 	it { described_class.interpret('D#','maj','7').should eq('D# G A# D') }
# 	it { described_class.interpret('Eb','maj','7').should eq('Eb G Bb D') }	
# 	it { described_class.interpret('E','maj','7').should eq('E G# B D#') }
# 	it { described_class.interpret('F','maj','7').should eq('F A C E') }
# 	it { described_class.interpret('F#','maj','7').should eq('F# A# C# F') }
# 	it { described_class.interpret('Gb','maj','7').should eq('Gb Bb Db F') }
# 	it { described_class.interpret('G','maj','7').should eq('G B D F#') }
# 	it { described_class.interpret('G#','maj','7').should eq('G# C D# G') }
# 	it { described_class.interpret('Ab','maj','7').should eq('Ab C Eb G') }	
# 	it { described_class.interpret('A','maj','7').should eq('A C# E G#') }	
# 	it { described_class.interpret('A#','maj','7').should eq('A# D F A') }
# 	it { described_class.interpret('Bb','maj','7').should eq('Bb D F A') }
# 	it { described_class.interpret('B','maj','7').should eq('B D# F# A#') }

# # minor 7
# 	it { described_class.interpret('C', 'min','7').should eq('C Eb G Bb') }
# 	it { described_class.interpret('C#','min','7').should eq('C# E G# B') }
# 	it { described_class.interpret('Db','min','7').should eq('Db E Ab B') }
# 	it { described_class.interpret('D', 'min','7').should eq('D F A C') }
# 	it { described_class.interpret('D#','min','7').should eq('D# F# A# C#') }
# 	it { described_class.interpret('Eb','min','7').should eq('Eb Gb Bb Db') }		
# 	it { described_class.interpret('E', 'min','7').should eq('E G B D') }
# 	it { described_class.interpret('F','min','7').should eq('F Ab C Eb') }
# 	it { described_class.interpret('F#','min','7').should eq('F# A C# E') }
# 	it { described_class.interpret('Gb','min','7').should eq('Gb A Db E') }
# 	it { described_class.interpret('G','min','7').should eq('G Bb D F') }
# 	it { described_class.interpret('G#','min','7').should eq('G# B D# F#') }
# 	it { described_class.interpret('Ab','min','7').should eq('Ab B Eb Gb') }
# 	it { described_class.interpret('A','min','7').should eq('A C E G') }	
# 	it { described_class.interpret('A#','min','7').should eq('A# C# F G#') }
# 	it { described_class.interpret('Bb','min','7').should eq('Bb Db F Ab') }
# 	it { described_class.interpret('B','min','7').should eq('B D F# A') }

# # augmented 7
# 	it { described_class.interpret('C','aug','7').should eq('C E G# Bb') }
# 	it { described_class.interpret('C#','aug','7').should eq('C# F A B') }
# 	it { described_class.interpret('Db','aug','7').should eq('Db F A B') } # can add Cb (option)
# 	it { described_class.interpret('D','aug','7').should eq('D F# A# C') }
# 	it { described_class.interpret('D#','aug','7').should eq('D# G B C#') }
# 	it { described_class.interpret('Eb','aug','7').should eq('Eb G B Db') }	
# 	it { described_class.interpret('E','aug','7').should eq('E G# C D') }
# 	it { described_class.interpret('F','aug','7').should eq('F A C# Eb') }
# 	it { described_class.interpret('F#','aug','7').should eq('F# A# D E') }
# 	it { described_class.interpret('Gb','aug','7').should eq('Gb Bb D E') } # can add Fb (option)
# 	it { described_class.interpret('G','aug','7').should eq('G B D# F') }
# 	it { described_class.interpret('G#','aug','7').should eq('G# C E F#') }
# 	it { described_class.interpret('Ab','aug','7').should eq('Ab C E Gb') }	
# 	it { described_class.interpret('A','aug','7').should eq('A C# F G') }	
# 	it { described_class.interpret('A#','aug','7').should eq('A# D F# G#') }
# 	it { described_class.interpret('Bb','aug','7').should eq('Bb D F# Ab') }
# 	it { described_class.interpret('B','aug','7').should eq('B D# G A') }

# # diminished7	
# 	it { described_class.interpret('C', 'dim','7').should eq('C Eb Gb A') }
# 	it { described_class.interpret('C#','dim','7').should eq('C# E G Bb') }
# 	it { described_class.interpret('Db','dim','7').should eq('Db E G Bb') }
# 	it { described_class.interpret('D', 'dim','7').should eq('D F Ab B') }
# 	it { described_class.interpret('D#','dim','7').should eq('D# F# A C') }
# 	it { described_class.interpret('Eb','dim','7').should eq('Eb Gb A C') }		
# 	it { described_class.interpret('E', 'dim','7').should eq('E G Bb Db') }
# 	it { described_class.interpret('F','dim','7').should eq('F Ab B D') }
# 	it { described_class.interpret('F#','dim','7').should eq('F# A C Eb') }
# 	it { described_class.interpret('Gb','dim','7').should eq('Gb A C Eb') }
# 	it { described_class.interpret('G','dim','7').should eq('G Bb Db E') }
# 	it { described_class.interpret('G#','dim','7').should eq('G# B D F') }
# 	it { described_class.interpret('Ab','dim','7').should eq('Ab B D F') }
# 	it { described_class.interpret('A','dim','7').should eq('A C Eb Gb') }	
# 	it { described_class.interpret('A#','dim','7').should eq('A# C# E G') }
# 	it { described_class.interpret('Bb','dim','7').should eq('Bb Db E G') }
# 	it { described_class.interpret('B','dim','7').should eq('B D F Ab') }

# # minor maj7
# 	it { described_class.interpret('C', 'min','maj7').should eq('C Eb G B') }
# 	it { described_class.interpret('C#','min','maj7').should eq('C# E G# C') }
# 	it { described_class.interpret('Db','min','maj7').should eq('Db E Ab C') }
# 	it { described_class.interpret('D', 'min','maj7').should eq('D F A C#') }
# 	it { described_class.interpret('D#','min','maj7').should eq('D# F# A# D') }
# 	it { described_class.interpret('Eb','min','maj7').should eq('Eb Gb Bb D') }		
# 	it { described_class.interpret('E', 'min','maj7').should eq('E G B D#') }
# 	it { described_class.interpret('F','min','maj7').should eq('F Ab C E') }
# 	it { described_class.interpret('F#','min','maj7').should eq('F# A C# F') }
# 	it { described_class.interpret('Gb','min','maj7').should eq('Gb A Db F') }
# 	it { described_class.interpret('G','min','maj7').should eq('G Bb D F#') }
# 	it { described_class.interpret('G#','min','maj7').should eq('G# B D# G') }
# 	it { described_class.interpret('Ab','min','maj7').should eq('Ab B Eb G') }
# 	it { described_class.interpret('A','min','maj7').should eq('A C E G#') }	
# 	it { described_class.interpret('A#','min','maj7').should eq('A# C# F A') }
# 	it { described_class.interpret('Bb','min','maj7').should eq('Bb Db F A') }
# 	it { described_class.interpret('B','min','maj7').should eq('B D F# A#') }

# # augmented maj7
# 	it { described_class.interpret('C','aug','maj7').should eq('C E G# B') }
# 	it { described_class.interpret('C#','aug','maj7').should eq('C# F A C') }
# 	it { described_class.interpret('Db','aug','maj7').should eq('Db F A C') }
# 	it { described_class.interpret('D','aug','maj7').should eq('D F# A# C#') }
# 	it { described_class.interpret('D#','aug','maj7').should eq('D# G B D') }
# 	it { described_class.interpret('Eb','aug','maj7').should eq('Eb G B D') }	
# 	it { described_class.interpret('E','aug','maj7').should eq('E G# C D#') }
# 	it { described_class.interpret('F','aug','maj7').should eq('F A C# E') }
# 	it { described_class.interpret('F#','aug','maj7').should eq('F# A# D F') }
# 	it { described_class.interpret('Gb','aug','maj7').should eq('Gb Bb D F') }
# 	it { described_class.interpret('G','aug','maj7').should eq('G B D# F#') }
# 	it { described_class.interpret('G#','aug','maj7').should eq('G# C E G') }
# 	it { described_class.interpret('Ab','aug','maj7').should eq('Ab C E G') }	
# 	it { described_class.interpret('A','aug','maj7').should eq('A C# F G#') }	
# 	it { described_class.interpret('A#','aug','maj7').should eq('A# D F# A') }
# 	it { described_class.interpret('Bb','aug','maj7').should eq('Bb D F# A') }
# 	it { described_class.interpret('B','aug','maj7').should eq('B D# G A#') }

# # half-diminished seventh (minor seventh flat five)
#   it {
# #     chord.root = 'C'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('C Eb Gb Bb')
#   }    

#   it {
#     chord = ChordParser::Chord.new 
#     chord.root = 'Db'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('Db E G B')
#   }

#   it {
# #     chord.root = 'C#'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('C# E G B')
#   }

#   it {
# #     chord.root = 'D'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('D F Ab C')
#   }

#   it {
# #     chord.root = 'D#'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('D# F# A C#')
#   }

#   it {
# #     chord.root = 'Eb'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('Eb Gb A Db')
#   }

#   it {
# #     chord.root = 'E'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('E G Bb D')
#   }

#   it {
# #     chord.root = 'F'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('F Ab B Eb')
#   }

#   it {
# #     chord.root = 'F#'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('F# A C E')
#   }

#   it {
# #     chord.root = 'Gb'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('Gb A C E')
#   }

#   it {
# #     chord.root = 'G'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('G Bb Db F')
#   }

#   it {
# #     chord.root = 'G#'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('G# B D F#')
#   }

#   it {
# #     chord.root = 'Ab'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('Ab B D Gb')
#   }

#   it {
# #     chord.root = 'A'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('A C Eb G')
#   }

#   it {
# #     chord.root = 'A#'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('A# C# E G#')
#   }

#   it {
# #     chord.root = 'Bb'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('Bb Db E Ab')
#   }

#   it {
#     chord = ChordParser::Chord.new
#     chord.root = 'B'
#     chord.quality = 'min7'
#     chord.added = 'dim7'  
#     described_class.interpret(chord).should eq('B D F A')
#   }  


end	