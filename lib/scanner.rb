class Scanner

	def initialize(messenger)
		@messenger = messenger
	end

	def start
		@messenger.puts "Welcome to note interpreter!"
		@messenger.puts "Enter chord in jazz notation.\n Note: for ♭ use b (lower case B),\n example: G#−7♭5 as G#−7b5."
	end
end