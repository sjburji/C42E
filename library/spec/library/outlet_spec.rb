require 'spec_helper'

module Library
	describe 'Outlet' do
		it "should have 3 books" do
			Books.count.should eq(3)
		end
	end	
end
