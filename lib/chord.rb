class Chord
		CHROMATIC_SCALE_SHARP = %w(C C# D D# E F F# G G# A A# B)
		CHROMATIC_SCALE_FLAT = %w(C Db D Eb E F Gb G Ab A Bb B)
		# Third 
		MIN3 = 3
		MAJ3 = 4	#no_symbol, M, maj, or major
		# Fifth
		DIM5 = 6
		PERF5 = 7	# no_symbol, M, maj, or major
		AUG5 = 8
		# Added
		MAJ6 = 9		# min6  can be written as min6 & maj6 & M6 & m6 ma pozycje 9
		DIM7 = 9
		MIN7 = 10	
		MAJ7 = 11	


	def chord_interpretator(chord_root, chord_quality, interval_number, alerted_fifth, added_tone_chords)
		chromatic_scale = determine_scale(chord_root, chord_quality)
		interval = determine_interval(chromatic_scale, chord_root, chord_quality)
		
		chord_third = chromatic_scale[transpose(chord_third(chord_quality), interval)]
		chord_fifth = chromatic_scale[transpose(chord_fifth(chord_quality), interval)]

		notes_list = "#{chord_root} #{chord_third} #{chord_fifth}"

		if interval_number != 0 #
			if interval_number == 7 || interval_number == 'maj7'
				if chord_quality == 'aug' || chord_quality == 'min'
					chromatic_scale = determine_scale(chord_root, 'dom')
				elsif chord_quality == 'dim'
					chromatic_scale = CHROMATIC_SCALE_FLAT
				end
			end	
			# so far works for: interval_number == 6, 7, 'maj7' 
			interval_added = chromatic_scale[transpose(interval_number(interval_number, chord_quality), interval)]
			notes_list << " #{interval_added}"
		end

  	notes_list
	end


	def flat?(chord_root, chord_quality)
		%w(maj aug dom).index(chord_quality) && %w(Eb Ab Db Gb Cb Fb).index(chord_root) \
				|| %w(maj dom).index(chord_quality)  && %w(F Bb).index(chord_root) \
				|| %w(min dim).index(chord_quality) && %w(D G C F Bb Eb Ab Db Gb).index(chord_root) \
				|| chord_quality == 'dim' && %w(A E).index(chord_root) \
				|| chord_quality == 'dom' && chord_root == 'C'
 	end

	def sharp?(chord_root, chord_quality)
		%w(maj aug dom).index(chord_quality) &&  %w(C G D A E B F# C# G# D# A#).index(chord_root) \
				|| chord_quality == 'aug' && %w(F Bb).index(chord_root) \
				|| %w(min dim).index(chord_quality) &&  %w(A B F# C# G# D# A# E#).index(chord_root) \
				|| chord_quality == 'min' && %w(A E).index(chord_root)
	end


	def transpose(note, interval)
		(note + interval) % 12
	end

	def determine_scale(chord_root, chord_quality)
		if flat?(chord_root, chord_quality)
			CHROMATIC_SCALE_FLAT
		elsif sharp?(chord_root, chord_quality)
			CHROMATIC_SCALE_SHARP
		end
	end

	def determine_interval(chromatic_scale, chord_root, chord_quality)
		if [chord_root, chord_quality] == ['E#', 'min']
			chromatic_scale.index('F')
		elsif [chord_root, chord_quality] == ['Bb', 'aug']
			chromatic_scale.index('A#')
		else
			chromatic_scale.index(chord_root)
		end			
	end

	def chord_third(chord_quality)
		{
			'maj'=> MAJ3,
			'dom'=> MAJ3,
			'aug'=> MAJ3,
			'min'=> MIN3,
			'dim'=> MIN3
		}[chord_quality]
	end

	def chord_fifth(chord_quality)
		{
			'maj'=> PERF5,
			'dom'=> PERF5,
			'min'=> PERF5,
			'aug'=> AUG5,
			'dim'=> DIM5
		}[chord_quality]
	end

	def interval_number(interval_number, chord_quality)
		{
			'maj7' => MAJ7,
			6 => MAJ6,
			7 => 
			{
				'maj'=> MAJ7,
				'dom'=> MIN7,
				'min'=> MIN7,
				'aug'=> MIN7,
				'dim'=> DIM7
			}[chord_quality]
		}[interval_number]
	end
end