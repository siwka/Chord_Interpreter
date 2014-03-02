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

  it 'gets the quality of C minor when Cm7 minor 7th chord' do
    chord = described_class.parse 'Cm7'
    expect(chord.quality).to eq('min')
  end  

  it 'gets the 7th tone added when Cm7 minor 7th chord' do
    chord = described_class.parse 'Cm7'
    expect(chord.added).to eq('7')
  end  




  xit 'gets the quality of C major when CMa7' do
    chord = described_class.parse 'CMa7'
    expect(chord.quality).to eq('maj')
  end   
end
