require 'spec_helper'

module Library
	describe Outlet do
		before(:each) do
			@outlet = Outlet.new()
		end

		it "should have 3 books" do
			@outlet.books.should eq(3)
		end

		it "should give Book1 when looked up with ISBN1" do
			book = [:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10]
			@outlet.lookup('ISBN1').should eq(book)
		end	
	end
end
