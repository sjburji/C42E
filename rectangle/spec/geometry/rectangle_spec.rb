require 'spec_helper'

module Gemoetry
	describe Rectangle do
		it "should have perimeter 30 given length as 5 and breadth 10" do		
			Rectangle::Perimeter.new(5, 10).perimeter.should eql(30)
		end

		it "should have perimeter 10 for length 2, breadth 3" do
			Rectangle::Perimeter.new(2, 3).perimeter.should eql(10)
		end

		it "should have perimeter 22 for length 8, breadth 3" do
			Rectangle::Perimeter.new(8, 3).perimeter.should eql(22)
		end

		it "should have an area of 6 for length 5, breadth 10" do
			Rectangle::Perimeter.new(5, 10).area.should eql(50)
		end

		it "should have an area of 24 for length 8, breadth 3" do
			Rectangle::Perimeter.new(8, 3).area.should eql(24)
		end
	end
end
