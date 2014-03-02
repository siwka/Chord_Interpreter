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
  	case input
    when 'C', 'CM', 'Cmaj', 'Cmajor', 'C6', 'CM6', 'Cmaj6', 'CM7', 'Cmaj7'
      'maj'
    when 'Cm3', 'Cm', 'C-', 'Cmin', 'Cminor', 'Cm6', 'Cm7', 'Cmin7', 'Cmin/maj7', 'Cmin(maj7)','Cm/M7' ,'Cm(M7)'
      'min'
    when 'Caug', 'C+', 'C+5', 'CM+5', 'CM#5', 'Caug7', 'C+7'
      'aug'
    when 'Cdim', 'Co', 'Cmo5', 'Cmb5', 'Cdim7', 'Co7'
      'dim'
    when 'C7' ,'Cdom7'
      'dom'
    else
      puts 'wrong input'
    end
   #  {
  	# 	'C'				=> 'maj',
  	# 	'CM'			=> 'maj',
  	# 	'Cmaj'		=> 'maj',
  	# 	'Cmajor'	=> 'maj',
  	# 	'Cm3'			=> 'min',
   #    'Cm'      => 'min',      
   #    'C-'      => 'min',      
  	# 	'Cmin'		=> 'min',
  	# 	'Cminor'	=> 'min',
   #    'Caug'    => 'aug',
   #    'C+'      => 'aug',
   #    'C+5'     => 'aug',
   #    'CM+5'    => 'aug',      
   #    'CM#5'    => 'aug',     
   #    'Cdim'    => 'dim',      
   #    'Co'      => 'dim',
   #    'Cmo5'    => 'dim',
   #    'Cmb5'    => 'dim',
   #    'C6'      => 'maj',
   #    'CM6'     => 'maj',
   #    'Cmaj6'   => 'maj',
   #    'Cm6'     => 'min',
   #    'C7'      => 'dom',
   #    'Cdom7'   => 'dom',      
   #    'CM7'     => 'maj',
   #    'Cm7'     => 'min',                         
   #    #'CMa'     => 'maj',                        
  	# }[input]
  end

  def self.added_tone_of input
    input.scan(/\d+/).join
    # {
    #   'C6'     => '6',
    #   'CM6'    => '6',
    #   'Cmaj6'  => '6',
    #   'Cm6'    => '6',
    #   'C7'     => '7',
    #   'Cdom7'  => '7',      
    #   'CM7'    => '7',
    #   'Cmaj7'  => '7',
    #   'Cm7'     => '7',  'Cmin7',  ,Caug7', 'Cdim7', 'Co7', 'Cmin/maj7', 'Cmin(maj7)', ,'Cm/M7' ,'Cm(M7)'
    # }[input]
  end

end