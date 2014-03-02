class ChordParser
	
  class Chord
    attr_accessor :root, :quality
  end

	def self.parse input
		chord = Chord.new
		chord.root = 'C'
		chord.quality = quality_of input
		chord
	end

  private

  def self.quality_of input
  	{
  		'C'				=> 'maj',
  		'CM'			=> 'maj',
  		'Cmaj'		=> 'maj',
  		'Cmajor'	=> 'maj',
  		'Cm'			=> 'min',
  		'Cmin'		=> 'min',
  		'C minor'	=> 'min',
    #input == 'Cm' ? 'min' : 'maj'
  	}[input]
  end	

end