class Chord

	def chord_interpretator(chord_notation)
		chromatic_scale_sharp = %w(C C# D D# E F F# G G# A A# B)
		chromatic_scale_flat = %w(C Db D Eb E F Gb G Ab A Bb B)
		maj3 = 4
		perf5 = 7

		interval = chromatic_scale_flat.index(chord_notation[0])

		chord_root = chord_notation[0]
		chord_third = maj3
		chord_fifth = perf5

		if chord_notation[1] == 'b'
			interval -= 1
			chord_root << chord_notation[1]
			return chord_root + ' '	+  chromatic_scale_flat[transposition(chord_third, interval)] + ' ' 	+ chromatic_scale_flat[transposition(chord_fifth, interval)]
		elsif chord_notation[1] == '#'
			interval +=1
			chord_root << chord_notation[1]
		end
		
		chord_root + ' '	+  chromatic_scale_sharp[transposition(chord_third, interval)] + ' ' 	+ chromatic_scale_sharp[transposition(chord_fifth, interval)]
	end


	def transposition(note, interval)
		(note + interval) % 12
	end

	def fun
	end

end