require 'scanner'

describe Scanner do
	context "starting up" do

		it "should send a welcome message" do
			messenger = mock("messenger").as_null_object
			scanner = Scanner.new(messenger)
			messenger.should_receive(:puts).with("Welcome to note interpreter!")
			scanner.start
		end

		it "should prompt for the first chord" do
			messenger = mock("messenger").as_null_object
			scanner = Scanner.new(messenger)
			messenger.should_receive(:puts).with("Enter chord in jazz notation.")
			scanner.start
		end
	end
end