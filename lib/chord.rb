class Chord

	def chord_interpretator(chord_notation)
		tonacja = %w(C Cis D Dis E F Fis G Gis A Ais B)

		if chord_notation == 'C'
			return tonacja[0] + ' ' +  tonacja[4] + ' ' + tonacja[7]
		elsif chord_notation == "D"
			return tonacja[2] + ' ' +  tonacja[6] + ' ' + tonacja[9]
			
		end

	end

end