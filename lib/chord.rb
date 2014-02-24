class Chord

	def chord_interpretator(chord_notation)
		chromatic_scale_sharp = %w(C C# D D# E F F# G G# A A# B)
		chromatic_scale_flat = %w(C Db D Eb E F Gb G Ab A Bb B)

		interval = chromatic_scale_flat.index(chord_notation[0])

		if chord_notation[1] == 'b'
			interval -= 1
			return chord_notation[0..1] + ' '	+  chromatic_scale_flat[transposition(4, interval)] + ' ' 	+ chromatic_scale_flat[transposition(7, interval)]
		elsif chord_notation[1] == '#'
			interval +=1
			return chord_notation[0..1] + ' '	+  chromatic_scale_sharp[transposition(4, interval)] + ' ' 	+ chromatic_scale_sharp[transposition(7, interval)]
		end				
		chord_notation[0] + ' '	+  chromatic_scale_sharp[transposition(4, interval)] + ' ' 	+ chromatic_scale_sharp[transposition(7, interval)]
	end


	def transposition(note, interval)
		(note + interval) % 12
	end

	def fun
	end

end