require "rspec"
require_relative '../calculator'

describe Calculator do
	before { @calculator =Calculator.new('Rspec Calculator')}

	it "should add 2 number correctly" do
		expect(@calculator.add(4,2)).to eq 2
	end

	it "should subtract 2 number correctly" do
		expect(@calculator.subtract(4,2)).to eq 2
	end
end