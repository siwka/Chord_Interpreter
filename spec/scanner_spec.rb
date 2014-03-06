require 'scanner'

describe Scanner do
	context "starting up" do
		let(:messenger) { messenger = mock("messenger").as_null_object }
		let(:scanner) { scanner = Scanner.new(messenger) }

		it "should send a welcome message (passing the code to start)" do
			messenger.should_receive(:puts).with("Welcome to note interpreter!")
			scanner.start(%w(Cmaj Cmaj7 Cdom7))
		end		

		it "should prompt for the first chord" do
			messenger.should_receive(:puts).with("Enter chord in a jazz notation.\n Note: for ♭ use b (lower case B),\n example: G#−7♭5 as G#−7b5.")
			scanner.start(%w(Cmaj Cmaj7 Cdom7))
		end
	end
	
	context "receive jazz notation" do	
		let(:messenger) { messenger = mock("messenger").as_null_object }
		let(:scanner) { scanner = Scanner.new(messenger) }

		context "receive correct jazz notation chord" do
			xit "should receive F#maj6" do
				scanner.start('')
				scanner.take("F#maj6")
				messenger.should_receive(:puts).with("F# A# C# D#") #albo odwrotnie, str 71
			end
		end
	end
end