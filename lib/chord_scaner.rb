class ChordScaner
	
  class Chord
    attr_accessor :root, :quality
  end

	def self.scan input
		chord = Chord.new
		chord.root = 'C'
		chord.quality = quality_of input
		chord
	end

  private

  def self.quality_of input
    input == 'Cm' ? 'min' : 'maj'
  end	

end