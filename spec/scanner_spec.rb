require 'scanner'

describe Scanner do
	context "starting up" do
		let(:messenger) { messenger = mock("messenger").as_null_object }
		let(:scanner) { scanner = Scanner.new(messenger) }

		it "should send a welcome message" do
			messenger.should_receive(:puts).with("Welcome to note interpreter!")
			scanner.start
		end

		it "should prompt for the first chord" do
			messenger.should_receive(:puts).with("Enter chord in jazz notation.\n Note: for ♭ use b (lower case B),\n example: G#−7♭5 as G#−7b5.")
			scanner.start
		end
	end
end