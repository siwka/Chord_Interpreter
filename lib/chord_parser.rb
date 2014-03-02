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
    when 'C', 'CM', 'Cmaj', 'Cmajor', 'C6', 'CM6', 'Cmaj6', 'CM7', 'CMa7', 'Cmaj7'
      'maj'
    when 'Cm3', 'Cm', 'C-', 'Cmin', 'Cminor', 'Cm6', 'Cm7', 'C-7', 'Cmin7', 'Cmin/maj7', 'Cmin(maj7)','Cm/M7' ,'Cm(M7)', 'Cm#7', 'C-M7'
      'min'
    when 'Caug', 'C+', 'C+5', 'CM+5', 'CM#5', 'Caug7', 'C+7', 'Caug/maj7', 'Caug(maj7)', 'C+M7'
      'aug'
    when 'Cdim', 'Co', 'Cmo5', 'Cmb5', 'Cdim7', 'Co7'
      'dim'
    when 'C7' ,'Cdom7'
      'dom'
    when 'Cdom7dim5', 'C7b5'
      'dom7'
    else
      puts "wrong quality of input #{input}"
    end
  end

  def self.added_tone_of input
    case input
    when 'C6', 'CM6', 'Cmaj6', 'Cm6'
      '6'
    when 'C7', 'Cdom7', 'CM7', 'CMa7', 'Cmaj7', 'Cm7', 'C-7', 'Cmin7', 'Caug7', 'Cdim7', 'Co7', 'C+7'
      '7'
    when 'Cmin/maj7', 'Cmin(maj7)', 'Cm/M7' ,'Cm(M7)', 'Cm#7', 'C-M7', 'Caug/maj7', 'Caug(maj7)', 'C+M7'
      'maj7'
    when 'Cdom7dim5', 'C7b5'
      'dim5'
    else
      puts "wrong added tone of input #{input}"
    end
  end

end