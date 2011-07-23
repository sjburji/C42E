require 'spec_helper'

module Gemoetry
	describe Rectangle do
		it "should accept length as 5 and breadth 10" do		
			Rectangle::Perimeter.perimeter(5, 10).should eql(30)
		end
	end
end
