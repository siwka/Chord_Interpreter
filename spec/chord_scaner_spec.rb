require 'chord_scaner'

describe ChordScaner do
  it 'scans C' do
    chord = described_class.scan 'C'
    expect(chord.root).to eq('C')
  end

  xit 'gets the quality of C when nothing' do
    chord = described_class.scan 'C'
    expect(chord.quality).to eq('maj')
  end

  xit 'gets the quality of C minor' do
    chord = described_class.scan 'Cm'
    expect(chord.quality).to eq('min')
  end
end
