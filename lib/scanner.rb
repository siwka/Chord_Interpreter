class Scanner

	def initialize(messenger)
		@messenger = messenger
	end

	def start(code)
		@code = code  # ten zaly 'code' zlikwidowac
		@messenger.puts "Welcome to note interpreter!"
		@messenger.puts "Enter chord in a jazz notation.\n Note: for ♭ use b (lower case B),\n example: G#−7♭5 as G#−7b5."
	end

	def take(chord_notation)
		# @messenger.puts "chord root: #{chord.root}"
		# @messenger.puts "chord quality #{chord.quality}"
		# @messenger.puts "chord add_int #{chord.added}"
		#@messenger.puts "F# A# C# D#"
		chord_notation
	end
end