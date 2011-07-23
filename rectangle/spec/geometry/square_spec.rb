require 'spec_helper'

module Geometry
	describe 'Square' do
		context "the perimeter" do
			it "is 20 given side as 5" do		
				Geometry::Rectangle.build_square(5).perimeter.should eql(20)
			end

			it "is 8 given side is 2" do
				Geometry::Rectangle.build_square(2).perimeter.should eql(8)
			end

			it "is 32 given side is 8" do
				Geometry::Rectangle.build_square(8).perimeter.should eql(32)
			end
		end
		context "the area" do

			it "is 25 given side is 5" do
				Geometry::Rectangle.build_square(5).area.should eql(25)
			end

			it "is 64 given side is 8" do
				Geometry::Rectangle.build_square(8).area.should eql(64)
			end
		end		

	
		context "the 0 validation" do
			it "should fail for 0 side" do
				lambda { Geometry::Rectangle.build_square(0)}.should raise_error(InvalidRectangleError)
			end

		end

		context "the -ve validation" do
			it "should fail -ve side" do
				lambda { Geometry::Rectangle.build_square(-1)}.should raise_error(InvalidRectangleError)
			end

		end

		context "Two squares" do
			it "should be equal with same dimensions" do
				rect1 = Geometry::Rectangle.build_square(1)
				rect2 = Geometry::Rectangle.build_square(1)
				rect1.should be_eql(rect2)
			end

			it "should not be equal with diff dimensions" do
				rect1 = Geometry::Rectangle.build_square(1)
				rect2 = Geometry::Rectangle.build_square(2)
				rect1.should_not be_eql(rect2)
			end

			it "should be == with same dimensions" do
				Geometry::Rectangle.build_square(1).should be == Geometry::Rectangle.build_square(1)
			end

			it "should not be equal with diff dimensions" do
				Geometry::Rectangle.build_square(2).should_not be == Geometry::Rectangle.build_square(1)
			end
		end

		it "should have same hash code" do
			Geometry::Rectangle.build_square(2).hash.should eq(Geometry::Rectangle.build_square(2).hash)
		end
	end
end
