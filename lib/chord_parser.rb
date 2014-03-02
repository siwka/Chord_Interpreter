class ChordParser
	
  class Chord
    attr_accessor :root, :quality, :added
  end

	def self.parse input
		chord = Chord.new
		chord.root = 'C'
		chord.quality = quality_of input
    chord.added = added_tone_of input
		chord
	end

  private

  def self.quality_of input
  	{
  		'C'				=> 'maj',
  		'CM'			=> 'maj',
  		'Cmaj'		=> 'maj',
  		'Cmajor'	=> 'maj',
  		'Cm3'			=> 'min',
      'Cm'      => 'min',      
      'C-'      => 'min',      
  		'Cmin'		=> 'min',
  		'Cminor'	=> 'min',
      'Caug'    => 'aug',      
      'C+'      => 'aug',
      'C+5'     => 'aug',
      'CM+5'    => 'aug',      
      'CM#5'    => 'aug',     
      'Cdim'    => 'dim',      
      'Co'      => 'dim',
      'Cmo5'    => 'dim',
      'Cmb5'    => 'dim',
      'C6'      => 'maj',
      'CM6'     => 'maj',
      'Cmaj6'     => 'maj',
      'Cm6'     => 'min',
      'C7'      => 'dom',
      'Cdom7'   => 'dom',      
      'CM7'     => 'maj',
      'Cm7'     => 'min',                         
      #'CMa'     => 'maj',                        
  	}[input]
  end

  def self.added_tone_of input
    {
      'C6'     => '6',
      'CM6'    => '6',
      'Cmaj6'  => '6',
      'Cm6'    => '6',
      'C7'     => '7',
      'Cdom7'  => '7',      
      'CM7'    => '7',
      'Cm7'     => '7',      
    }[input]
  end

end