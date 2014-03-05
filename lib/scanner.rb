class Scanner

	def initialize(messenger)
		@messenger = messenger
	end

	def start
		@messenger.puts "Welcome to note interpreter!"
		@messenger.puts "Enter chord in jazz notation."
	end
end