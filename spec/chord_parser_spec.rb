require 'chord_parser'

describe ChordParser do
  it 'parses C' do
    chord = described_class.parse 'C'
    expect(chord.root).to eq('C')
  end

  it 'gets the quality of C major when nothing' do
    chord = described_class.parse 'C'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the quality of C major when CM triad' do
    chord = described_class.parse 'CM'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the quality of C major when Cmaj triad' do
    chord = described_class.parse 'Cmaj'
    expect(chord.quality).to eq('maj')
  end

   it 'gets the quality of C major when Cmajor triad' do
    chord = described_class.parse 'Cmajor'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the quality of C minor when Cm minor triad' do
    chord = described_class.parse 'Cm'
    expect(chord.quality).to eq('min')
  end

  it 'gets the quality of C minor when Cm3 minor triad' do
    chord = described_class.parse 'Cm3'
    expect(chord.quality).to eq('min')
  end

  it 'gets the quality of C minor when Cmin minor triad' do
    chord = described_class.parse 'Cmin'
    expect(chord.quality).to eq('min')
  end

  it 'gets the quality of C minor when Cminor triad' do
    chord = described_class.parse 'Cminor'
    expect(chord.quality).to eq('min')
  end

  it 'gets the quality of C minor when C- minor triad' do
    chord = described_class.parse 'C-'
    expect(chord.quality).to eq('min')
  end

  it 'gets the quality of C augmented when Caug triad' do
    chord = described_class.parse 'Caug'
    expect(chord.quality).to eq('aug')
  end  

  it 'gets the quality of C augmented when C+ triad' do
    chord = described_class.parse 'C+'
    expect(chord.quality).to eq('aug')
  end

  it 'gets the quality of C augmented when C+5 triad' do
    chord = described_class.parse 'C+5'
    expect(chord.quality).to eq('aug')
  end

  it 'gets the quality of C augmented when CM+5 triad' do
    chord = described_class.parse 'CM+5'
    expect(chord.quality).to eq('aug')
  end

  it 'gets the quality of C augmented when CM#5 triad' do
    chord = described_class.parse 'CM#5'
    expect(chord.quality).to eq('aug')
  end      

  it 'gets the quality of C diminished when Cdim triad' do
    chord = described_class.parse 'Cdim'
    expect(chord.quality).to eq('dim')
  end

  it 'gets the quality of C diminished when Co triad' do
    chord = described_class.parse 'Co'
    expect(chord.quality).to eq('dim')
  end

  it 'gets the quality of C major when C6 major six chord' do
    chord = described_class.parse 'C6'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the 6th tone added when C6 major six chord' do
    chord = described_class.parse 'C6'
    expect(chord.added).to eq('6')
  end

  it 'gets the quality of C major when CM6 major six chord' do
    chord = described_class.parse 'CM6'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the 6th tone added when CM6 major six chord' do
    chord = described_class.parse 'CM6'
    expect(chord.added).to eq('6')
  end

  it 'gets the quality of C major when Cmaj6 major six chord' do
    chord = described_class.parse 'Cmaj6'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the 6th tone added when Cmaj6 major six chord' do
    chord = described_class.parse 'Cmaj6'
    expect(chord.added).to eq('6')
  end  

  it 'gets the quality of C minor when Cm6 minor six chord' do
    chord = described_class.parse 'Cm6'
    expect(chord.quality).to eq('min')
  end

  it 'gets the 6th tone added when Cm6 minor six chord' do
    chord = described_class.parse 'Cm6'
    expect(chord.added).to eq('6')
  end

  it 'gets the quality of C dominant when C7 dominant 7th chord' do
    chord = described_class.parse 'C7'
    expect(chord.quality).to eq('dom')
  end  

  it 'gets the 7th tone added when C7 dominant 7th chord' do
    chord = described_class.parse 'C7'
    expect(chord.added).to eq('7')
  end

  it 'gets the quality of C dominant when Cdom7 dominant 7th chord' do
    chord = described_class.parse 'Cdom7'
    expect(chord.quality).to eq('dom')
  end  

  it 'gets the 7th tone added when Cdom7 dominant 7th chord' do
    chord = described_class.parse 'Cdom7'
    expect(chord.added).to eq('7')
  end  

  it 'gets the quality of C major when CM7 major 7th chord' do
    chord = described_class.parse 'CM7'
    expect(chord.quality).to eq('maj')
  end  

  it 'gets the 7th tone added when CM7 major 7th chord' do
    chord = described_class.parse 'CM7'
    expect(chord.added).to eq('7')
  end

  it 'gets the quality of C major when CMa7' do
    chord = described_class.parse 'CMa7'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the 7th tone added when CMa7 major 7th chord' do
    chord = described_class.parse 'CMa7'
    expect(chord.added).to eq('7')
  end  

  it 'gets the quality of C major when Cmaj7 major 7th chord' do
    chord = described_class.parse 'Cmaj7'
    expect(chord.quality).to eq('maj')
  end  

  it 'gets the 7th tone added when Cmaj7 major 7th chord' do
    chord = described_class.parse 'Cmaj7'
    expect(chord.added).to eq('7')
  end    

  it 'gets the quality of C minor when Cm7 minor 7th chord' do
    chord = described_class.parse 'Cm7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cm7 minor 7th chord' do
    chord = described_class.parse 'Cm7'
    expect(chord.added).to eq('7')
  end

  it 'gets the quality of C minor when C-7 minor 7th chord' do
    chord = described_class.parse 'C-7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when C-7 minor 7th chord' do
    chord = described_class.parse 'C-7'
    expect(chord.added).to eq('7')
  end  

  it 'gets the quality of C minor when Cmin7 minor 7th chord' do
    chord = described_class.parse 'Cmin7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cmin7 minor 7th chord' do
    chord = described_class.parse 'Cmin7'
    expect(chord.added).to eq('7')
  end  

  it 'gets the quality of C aug when Caug7 augumented 7th chord' do
    chord = described_class.parse 'Caug7'
    expect(chord.quality).to eq('aug')
  end  

  it 'gets the 7th tone added when Caug7 augumented 7th chord' do
    chord = described_class.parse 'Caug7'
    expect(chord.added).to eq('7')
  end  

  it 'gets the quality of C aug when C+7 augumented 7th chord' do
    chord = described_class.parse 'C+7'
    expect(chord.quality).to eq('aug')
  end  

  it 'gets the 7th tone added when C+7 augumented 7th chord' do
    chord = described_class.parse 'C+7'
    expect(chord.added).to eq('7')
  end

  it 'gets the quality of C aug when Caug/maj7 augumented-major 7th chord' do
    chord = described_class.parse 'Caug/maj7'
    expect(chord.quality).to eq('aug')
  end  

  it 'gets the 7th tone added when Caug/maj7 augumented-major 7th chord' do
    chord = described_class.parse 'Caug/maj7'
    expect(chord.added).to eq('maj7')
  end


  it 'gets the quality of C aug when Caug(maj7) augumented-major 7th chord' do
    chord = described_class.parse 'Caug(maj7)'
    expect(chord.quality).to eq('aug')
  end  

  it 'gets the 7th tone added when Caug(maj7) augumented-major 7th chord' do
    chord = described_class.parse 'Caug(maj7)'
    expect(chord.added).to eq('maj7')
  end  

  it 'gets the quality of C aug when C+M7 augumented-major 7th chord' do
    chord = described_class.parse 'C+M7'
    expect(chord.quality).to eq('aug')
  end  

  it 'gets the 7th tone added when C+M7 augumented-major 7th chord' do
    chord = described_class.parse 'C+M7'
    expect(chord.added).to eq('maj7')
  end  

  it 'gets the quality of C dim when Cdim7 diminished 7th chord' do
    chord = described_class.parse 'Cdim7'
    expect(chord.quality).to eq('dim')
  end  

  it 'gets the 7th tone added when Cdim7 diminished 7th chord' do
    chord = described_class.parse 'Cdim7'
    expect(chord.added).to eq('7')
  end  

  it 'gets the quality of C dim when Co7 diminished 7th chord' do
    chord = described_class.parse 'Co7'
    expect(chord.quality).to eq('dim')
  end  

  it 'gets the 7th tone added when Co7 diminished 7th chord' do
    chord = described_class.parse 'Co7'
    expect(chord.added).to eq('7')
  end

  it 'gets the quality of C minor when Cmin/maj7 minor/major seventh chord' do
    chord = described_class.parse 'Cmin/maj7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cmin/maj7 minor/major seventh chord' do
    chord = described_class.parse 'Cmin/maj7'
    expect(chord.added).to eq('maj7')
  end  

  it 'gets the quality of C minor when Cmin(maj7) minor/major seventh chord' do
    chord = described_class.parse 'Cmin(maj7)'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cmin(maj7) minor/major seventh chord' do
    chord = described_class.parse 'Cmin(maj7)'
    expect(chord.added).to eq('maj7')
  end

  it 'parses CmM7' do
    chord = described_class.parse 'C'
    expect(chord.root).to eq('C')
  end

  it 'gets the quality of C minor when CmM7 minor/major seventh chord' do
    chord = described_class.parse 'CmM7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when CmM7 minor/major seventh chord' do
    chord = described_class.parse 'CmM7'
    expect(chord.added).to eq('maj7')
  end  

  it 'gets the quality of C minor when Cm/M7 minor/major seventh chord' do
    chord = described_class.parse 'Cm/M7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cm/M7 minor/major seventh chord' do
    chord = described_class.parse 'Cm/M7'
    expect(chord.added).to eq('maj7')
  end

  it 'gets the quality of C minor when Cm#7 minor/major seventh chord' do
    chord = described_class.parse 'Cm#7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cm#7 minor/major seventh chord' do
    chord = described_class.parse 'Cm#7'
    expect(chord.added).to eq('maj7')
  end

  it 'gets the quality of C minor when C-M7 minor/major seventh chord' do
    chord = described_class.parse 'C-M7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when C-M7 minor/major seventh chord' do
    chord = described_class.parse 'C-M7'
    expect(chord.added).to eq('maj7')
  end   

  it 'gets the quality of C minor when Cm(M7) minor/major seventh chord' do
    chord = described_class.parse 'Cm(M7)'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cm(M7) minor/major seventh chord' do
    chord = described_class.parse 'Cm(M7)'
    expect(chord.added).to eq('maj7')
  end

  it 'gets the quality of C dim when Cdom7dim5 dominant seventh flat five' do
    chord = described_class.parse 'Cdom7dim5'
    expect(chord.quality).to eq('dom7')
  end  

  it 'gets the 7th tone added when Cdom7dim5 dominant seventh flat five' do
    chord = described_class.parse 'Cdom7dim5'
    expect(chord.added).to eq('dim5')
  end  

  it 'parses C7b5 dominant seventh flat five' do
    chord = described_class.parse 'C7b5'
    expect(chord.root).to eq('C')
  end

  it 'gets the quality of C dim when C7b5 dominant seventh flat five' do
    chord = described_class.parse 'C7b5'
    expect(chord.quality).to eq('dom7')
  end  

  it 'gets the 7th tone added when C7b5 dominant seventh flat five' do
    chord = described_class.parse 'C7b5'
    expect(chord.added).to eq('dim5')
  end

  it 'parses D' do
    chord = described_class.parse 'D'
    expect(chord.root).to eq('D')
  end

  it 'parses Gb' do
    chord = described_class.parse 'Gb'
    expect(chord.root).to eq('Gb')
  end

  it 'parses Bb7' do
    chord = described_class.parse 'Bb7'
    expect(chord.root).to eq('Bb')
  end

  it 'gets the quality of Bb7 dominant when Bb7 dominant 7th chord' do
    chord = described_class.parse 'Bb7'
    expect(chord.quality).to eq('dom')
  end  

  it 'gets the 7th tone added when Bb7 dominant 7th chord' do
    chord = described_class.parse 'Bb7'
    expect(chord.added).to eq('7')
  end  

  it 'parses G#7b5 dominant seventh flat five' do
    chord = described_class.parse 'G#7b5'
    expect(chord.root).to eq('G#')
  end

  it 'gets the quality of dom7 when G#7b5 dominant seventh flat five' do
    chord = described_class.parse 'G#7b5'
    expect(chord.quality).to eq('dom7')
  end 

  it 'gets the 7th tone added when G#7b5 dominant seventh flat five' do
    chord = described_class.parse 'G#7b5'
    expect(chord.added).to eq('dim5')
  end

  it 'parses A#' do
    chord = described_class.parse 'A#'
    expect(chord.root).to eq('A#')
  end

  it 'parses Eb7b5 dominant seventh flat five' do
    chord = described_class.parse 'Eb7b5'
    expect(chord.root).to eq('Eb')
  end

  it 'gets the quality of Eb dom7 when Eb7b5 dominant seventh flat five' do
    chord = described_class.parse 'Eb7b5'
    expect(chord.quality).to eq('dom7')
  end 

  it 'gets the 7th tone added when Eb7b5 dominant seventh flat five' do
    chord = described_class.parse 'Eb7b5'
    expect(chord.added).to eq('dim5')
  end

  it 'parses Ab7b5' do
    chord = described_class.parse 'Ab7b5'
    expect(chord.root).to eq('Ab')
  end
# Cmin7dim5 C-E♭-G♭-B♭
  it 'parses Cmin7dim5' do
    chord = described_class.parse 'Cmin7dim5'
    expect(chord.root).to eq('C')
  end

  it 'gets the quality of min7 when Cmin7dim5 half-diminished seventh' do
    chord = described_class.parse 'Cmin7dim5'
    expect(chord.quality).to eq('min7')
  end 

  it 'gets the 7th tone dim5 added when Cmin7dim5 half-diminished seventh' do
    chord = described_class.parse 'Cmin7dim5'
    expect(chord.added).to eq('dim5')
  end

  it 'parses Abm7♭5' do
    chord = described_class.parse 'Abm7b5'
    expect(chord.root).to eq('Ab')
  end

  it 'gets the quality of min7 when Abm7♭5 half-diminished seventh' do
    chord = described_class.parse 'Abm7b5'
    expect(chord.quality).to eq('min7')
  end 

  it 'gets the 7th tone dim5 added when Abm7♭5 half-diminished seventh' do
    chord = described_class.parse 'Abm7b5'
    expect(chord.added).to eq('dim5')
  end
  # C−7♭5   add!

end

