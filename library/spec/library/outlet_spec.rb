require 'spec_helper'

module Library
	describe Outlet do
		it "should have 3 books" do
			Outlet.new.books.should eq(3)
		end

		#it "should give Book1 when looked up with ISBN1"
			#Outlet.new.lookup('ISBN1').should eq(book1)	
		#end	
	end
end
