class ChordScaner
	
  class Chord
    attr_accessor :root, :quality
  end

	def self.scan input
		chord = Chord.new
		chord.root = 'C'
		chord
	end

end