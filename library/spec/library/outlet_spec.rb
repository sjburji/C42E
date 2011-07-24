require 'spec_helper'

module Library
	describe Outlet do
		before(:each) do
			@outlet = Outlet.new()
		end

		context "Outlet" do
			it "should have 3 books" do
				@outlet.books.should eq(3)
			end

			it "should give Book1 when looked up with ISBN1" do
				book = {:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10}
				@outlet.lookup('ISBN1').should eq(book)
			end

			it "should return nil when book not found" do
				@outlet.lookup('ISBN8').should eq(nil)
			end
		end

		context "Customer" do

			it "should have book issued if found" do
        book = {:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10}
				@outlet.issue(book).should eq(true)
			end

			it "should not have book issued if not found" do
        book = {:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN8', :cost => 10}
				@outlet.issue(book).should eq(false)
			end

      if "should not issue twice" do
            book = {:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10}
    				@outlet.issue(book)
    				@outlet.issue(book).should eq(false)        
      end
		end
	end
end
