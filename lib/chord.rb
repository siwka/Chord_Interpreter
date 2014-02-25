class Chord
	#attr_accessor :chord_notation
	
	#def initialize()

	#end

	def chord_interpretator(chord_root, chord_quality, chord_interval, alerted_fifth, added_tone_chords)
		chromatic_scale_sharp = %w(C C# D D# E F F# G G# A A# B)
		chromatic_scale_flat = %w(C Db D Eb E F Gb G Ab A Bb B)
		
		# Third
		min3 = 3 # Eb
		maj3 = 4  # E no_symbol, M, maj, or major

		# Fifth
		dim5 = 6 # Gb
		perf5 = 7 # G no_symbol, M, maj, or major
		aug5 = 8 # G#

		# Added
		maj6 = 9 # A =min6  to moze zapisac min6 & maj6 & M6 & m6 ma pozycje 9
		dim7 = 0 # Bbb
		min7 = 10 # Bb
		maj7 = 11 # B

		#chord_root = chord_notation[0]
		interval = chromatic_scale_flat.index(chord_root[0])

		if chord_root[1] == 'b'
			flat = true
			interval -= 1
		elsif chord_root[1] == '#'
			sharp = true
			interval +=1
		end
			
		case 
		when chord_quality == 'maj' 
			chord_third = maj3
			chord_fifth = perf5
		when chord_quality == 'min'
			chord_third = min3
			chord_fifth = perf5
		end


		if flat
			chord_third = chromatic_scale_flat[transposition(chord_third, interval)]
			chord_fifth = chromatic_scale_flat[transposition(chord_fifth, interval)]
		elsif sharp
			chord_third = chromatic_scale_sharp[transposition(chord_third, interval)]
			chord_fifth = chromatic_scale_sharp[transposition(chord_fifth, interval)]
		else
			chord_third = chromatic_scale_sharp[transposition(chord_third, interval)]
			chord_fifth = chromatic_scale_sharp[transposition(chord_fifth, interval)]
		end
		
		chord_root + ' '	+  chord_third + ' '	+  chord_fifth
	end


	def transposition(note, interval)
		(note + interval) % 12
	end

	def fun
	end

end