require 'chord_parser'

class ChordInterpreter
	CHROMATIC_SCALE_SHARP = %w(C C# D D# E F F# G G# A A# B)
	CHROMATIC_SCALE_FLAT = %w(C Db D Eb E F Gb G Ab A Bb B)
	# Third 
	MIN3 = 3
	MAJ3 = 4
	# Fifth
	DIM5 = 6
	PERF5 = 7
	AUG5 = 8
	# Added
	MAJ6 = 9
	DIM7 = 9
	MIN7 = 10
	MAJ7 = 11

	def self.interpret(chord)

		chromatic_scale = determine_scale(chord.root, chord.quality)
		interval = determine_interval(chromatic_scale, chord.root, chord.quality)
		
		chord_third = chromatic_scale[transpose(chord_three(chord.quality), interval)]
		chord_fifth = chromatic_scale[transpose(chord_five(chord.quality), interval)]
		chord_seventh = chord_seven(chord.root, chord.quality, chord.added, interval, chromatic_scale) if chord.added != ''

		notes_list = "#{chord.root} #{chord_third} #{chord_fifth}"
	 	notes_list << " #{chord_seventh}" unless chord_seventh.nil?
   	notes_list
	end


	def self.transpose(note, interval)
		(note + interval) % 12
	end

	def self.flat?(chord_root, chord_quality)
		%w(maj aug dom).index(chord_quality) && %w(Eb Ab Db Gb Cb Fb).index(chord_root) \
			|| %w(maj dom).index(chord_quality)  && %w(F Bb).index(chord_root) \
			|| %w(min min7 dim).index(chord_quality) && %w(D G C F Bb Eb Ab Db Gb).index(chord_root) \
			|| %w(min7 dim).index(chord_quality) && %w(A E).index(chord_root) \
			|| chord_quality == 'dom' && chord_root == 'C'
 	end

	def self.sharp?(chord_root, chord_quality)
		%w(maj aug dom).index(chord_quality) &&  %w(C G D A E B F# C# G# D# A#).index(chord_root) \
			|| chord_quality == 'aug' && %w(F Bb).index(chord_root) \
			|| %w(min dim).index(chord_quality) &&  %w(A B F# C# G# D# A# E#).index(chord_root) \
			|| chord_quality == 'min7' &&  %w(B F# C# G# D# A# E#).index(chord_root) \
			|| chord_quality == 'min' && %w(A E).index(chord_root)
	end
	
	def self.determine_scale(chord_root, chord_quality)
		if flat?(chord_root, chord_quality)
			CHROMATIC_SCALE_FLAT
		elsif sharp?(chord_root, chord_quality)
			CHROMATIC_SCALE_SHARP
		end
	end

	def self.determine_interval(chromatic_scale, chord_root, chord_quality)
		if [chord_root, chord_quality] == ['E#', 'min']
			chromatic_scale.index('F')
		elsif [chord_root, chord_quality] == ['Bb', 'aug']
			chromatic_scale.index('A#')
		else
			chromatic_scale.index(chord_root)
		end			
	end

	def self.chord_three(chord_quality)
		{
			'maj' => MAJ3,
			'dom' => MAJ3,
			'aug' => MAJ3,
			'min' => MIN3,
			'dim' => MIN3,
			'min7'=> MIN3
		}[chord_quality]
	end

	def self.chord_five(chord_quality)
		{
			'maj' => PERF5,
			'dom' => PERF5,
			'min' => PERF5,
			'aug' => AUG5,
			'dim' => DIM5,
			'min7'=> DIM5
		}[chord_quality]
	end

	def self.chord_seven(root, quality, added, interval, chromatic_scale)
		# so far works for: chord.added == 6 too even though it is not mentioned
		if %w(7 maj7 dim5).index(added)
			if %w(aug min).index(quality)
				chromatic_scale = determine_scale(root, 'dom')
			elsif quality == 'dim'
				chromatic_scale = CHROMATIC_SCALE_FLAT
			end
		end	
		chromatic_scale[transpose(interval_number(added, quality), interval)]
	end

	def self.interval_number(chord_added, chord_quality)
		{
			'maj7' => MAJ7,
			'dim5' => MIN7,
			'6' => MAJ6,
			'7' => 
			{
				'maj' => MAJ7,
				'dom' => MIN7,
				'min' => MIN7,
				'aug' => MIN7,
				'dim' => DIM7,
			}[chord_quality]
		}[chord_added]
	end	
end