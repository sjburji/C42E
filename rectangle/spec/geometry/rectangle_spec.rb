require 'spec_helper'

module Geometry
	describe Rectangle do
		context "the perimeter" do
			it "is 30 given length as 5 and breadth 10" do		
				Geometry::Rectangle.new(5, 10).perimeter.should eql(30)
			end

			it "is 10 for length 2, breadth 3" do
				Geometry::Rectangle.new(2, 3).perimeter.should eql(10)
			end

			it "is 22 for length 8, breadth 3" do
				Geometry::Rectangle.new(8, 3).perimeter.should eql(22)
			end
		end
		context "the area" do

			it "is 6 for length 5, breadth 10" do
				Geometry::Rectangle.new(5, 10).area.should eql(50)
			end

			it "is 24 for length 8, breadth 3" do
				Geometry::Rectangle.new(8, 3).area.should eql(24)
			end
		end

		context "the 0 validation" do
			it "should fail for 0 breadth" do
				lambda { Geometry::Rectangle.new(0, 1)}.should raise_error(InvalidRectangleError)
			end

			it "should fail for 0 length" do
				lambda { Geometry::Rectangle.new(1, 0)}.should raise_error(InvalidRectangleError)
			end

			it "should fail for 0 dimensions" do
				lambda { Geometry::Rectangle.new(0, 0)}.should raise_error(InvalidRectangleError)
			end

		end

		context "the negative validation" do
			it "should fail -ve breadth" do
				lambda { Geometry::Rectangle.new(0, -1)}.should raise_error(InvalidRectangleError)
			end

			it "should fail -ve length" do
				lambda { Geometry::Rectangle.new(-1, 0)}.should raise_error(InvalidRectangleError)
			end

			it "should fail -ve dimensions" do
				lambda { Geometry::Rectangle.new(-1, -1)}.should raise_error(InvalidRectangleError)
			end

		end

	end


end
