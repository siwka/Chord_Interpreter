class Chord
		CHROMATIC_SCALE_SHARP = %w(C C# D D# E F F# G G# A A# B)
		CHROMATIC_SCALE_FLAT = %w(C Db D Eb E F Gb G Ab A Bb B)

	def chord_interpretator(chord_root, chord_quality, interval_quality, alerted_fifth, added_tone_chords)
		# Third
		min3 = 3	# Eb
		maj3 = 4 	# E no_symbol, M, maj, or major
		# Fifth
		dim5 = 6	# Gb
		perf5 = 7	# G no_symbol, M, maj, or major
		aug5 = 8	# G#
		# Added
		maj6 = 9	# A =min6  to moze zapisac min6 & maj6 & M6 & m6 ma pozycje 9
		dim7 = 0	# Bbb
		min7 = 10	# Bb
		maj7 = 11	# B

		chromatic_scale = determine_scale(chord_root, chord_quality)
		interval = determine_interval(chromatic_scale, chord_root, chord_quality)
		
		case chord_quality
		when 'maj', 'dom'
			chord_third = maj3
			chord_fifth = perf5
		when 'min'
			chord_third = min3
			chord_fifth = perf5
		when 'aug'
			chord_third = maj3
			chord_fifth = aug5
		when 'dim'
			chord_third = min3
			chord_fifth = dim5
		end

		chord_third = chromatic_scale[transposition(chord_third, interval)]
		chord_fifth = chromatic_scale[transposition(chord_fifth, interval)]

		if interval_quality == 7
			case chord_quality
			when 'dim'
				interval_quality = dim7	
			when 'dom'#ks add_this?, 'min', 'aug'
				interval_quality = min7
			when 'maj'
				interval_quality = maj7
			end	
		end


		if interval_quality != 0
			interval_added = chromatic_scale[transposition(interval_quality, interval)]
			chord_root + ' '	+  chord_third + ' '	+  chord_fifth + ' ' + interval_added
		else
			chord_root + ' '	+  chord_third + ' '	+  chord_fifth
		end
 
	end


	def is_flat(chord_root, chord_quality)
		%w(maj aug dom).index(chord_quality) && %w(Eb Ab Db Gb Cb Fb).index(chord_root) \
				|| %w(maj dom).index(chord_quality)  && %w(F Bb).index(chord_root) \
				|| %w(min dim).index(chord_quality) && %w(D G C F Bb Eb Ab Db Gb).index(chord_root) \
				|| chord_quality == 'dim' && %w(A E).index(chord_root) \
				|| chord_quality == 'dom' && chord_root == 'C'
 	end

	def is_sharp(chord_root, chord_quality)
		%w(maj aug dom).index(chord_quality) &&  %w(C G D A E B F# C# G# D# A#).index(chord_root) \
				|| chord_quality == 'aug' && %w(F Bb).index(chord_root) \
				|| %w(min dim).index(chord_quality) &&  %w(A B F# C# G# D# A# E#).index(chord_root) \
				|| chord_quality == 'min' && %w(A E).index(chord_root)
	end


	def transposition(note, interval)
		(note + interval) % 12
	end

	def determine_scale(chord_root, chord_quality)
		if is_flat(chord_root, chord_quality)
			chromatic_scale = CHROMATIC_SCALE_FLAT
		elsif is_sharp(chord_root, chord_quality)
			chromatic_scale = CHROMATIC_SCALE_SHARP
		end
	end

	def determine_interval(chromatic_scale, chord_root, chord_quality)
		if chord_root == 'E#' && chord_quality == 'min'
			chromatic_scale.index('F')
		elsif chord_root == 'Bb' && chord_quality == 'aug'
			chromatic_scale.index('A#')
		else
			chromatic_scale.index(chord_root)
		end
	end

end