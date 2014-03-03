class ChordParser
	
  class Chord
    attr_accessor :root, :quality, :added
  end

	def self.parse input
    chord = Chord.new
    chord.root = root_of input
    @root = chord.root
		chord.quality = quality_of input
    chord.added = added_tone_of input
		chord
	end

  private

  def self.root_of input
    if %w[A B C D E F G].index(input.chr)
      len = 0
      if input.index('b') == 1 || input.index('#') == 1
        len = 1
      end  
      input[0..len]
    else
      puts "there is no key tone starting with this letter, raise_error(message)"
    end
  end

  def self.quality_of input
    input = input.delete(@root)
    input.scan(/(\w+)(\d+)/)
    case input
    when '', 'M', 'maj', 'major', '6', 'M6', 'maj6', 'M7', 'Ma7', 'maj7'
      'maj'
    when 'm3', 'm', '-', 'min', 'minor', 'm6', 'm7', '-7', 'min7', 'min/maj7', 'min(maj7)', 'mM7', 'm/M7' ,'m(M7)', 'm#7', '-M7'
      'min'
    when 'aug', '+', '+5', 'M+5', 'M#5', 'aug7', '+7', 'aug/maj7', 'aug(maj7)', '+M7'
      'aug'
    when 'dim', 'o', 'mo5', 'mb5', 'dim7', 'o7'
      'dim'
    when '7' ,'dom7'
      'dom'
    when 'dom7dim5', '7b5', '75'
      'dom7'
    else
      puts "wrong quality of input #{input}, raise_error(message)"
    end

  end

  def self.added_tone_of input
    input = input.delete(@root)
    case input
    when '', 'M', 'maj', 'major', 'm', 'm3', 'min', 'minor', '-', 'aug', '+', '+5', 'M+5', 'M#5', 'dim', 'o'
      ''
    when '6', 'M6', 'maj6', 'm6'
      '6'
    when '7', 'dom7', 'M7', 'Ma7', 'maj7', 'm7', '-7', 'min7', 'aug7', 'dim7', 'o7', '+7'
      '7'
    when 'min/maj7', 'min(maj7)', 'mM7', 'm/M7' ,'m(M7)', 'm#7', '-M7', 'aug/maj7', 'aug(maj7)', '+M7'
      'maj7'
    when 'dom7dim5', '7b5', '75'
      'dim5'
    else
      puts "wrong added tone of input #{input}, raise_error(message)"
    end
  end

end