require 'chord_scaner'

describe ChordScaner do
  it 'scans C' do
    chord = described_class.scan 'C'
    expect(chord.root).to eq('C')
  end

  it 'gets the quality of C when nothing' do
    chord = described_class.scan 'C'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the quality of C minor' do
    chord = described_class.scan 'Cm'
    expect(chord.quality).to eq('min')
  end

  it 'gets the quality of C major' do
    chord = described_class.scan 'CM'
    expect(chord.quality).to eq('maj')
  end 

  it 'gets the quality of C major' do
    chord = described_class.scan 'Cmaj'
    expect(chord.quality).to eq('maj')
  end

   it 'gets the quality of C major' do
    chord = described_class.scan 'Cmajor'
    expect(chord.quality).to eq('maj')
  end


   it 'gets the quality of C major' do
    chord = described_class.scan 'C M'
    expect(chord.quality).to eq('maj')
  end

   it 'gets the quality of C major' do
    chord = described_class.scan 'C maj'
    expect(chord.quality).to eq('maj')
  end


   it 'gets the quality of C major' do
    chord = described_class.scan 'C major'
    expect(chord.quality).to eq('maj')
  end

  it 'gets the quality of C minor' do
    chord = described_class.scan 'Cmin'
    expect(chord.quality).to eq('min')
  end  
end
