module Library
	class Outlet
		def initialize
			@books = Array.new
			@books = [{:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10},
				 {:book => 'BOOK2', :author => 'AUTHOR2', :isbn => 'ISBN2', :cost => 10},
				 {:book => 'BOOK3', :author => 'AUTHOR3', :isbn => 'ISBN3', :cost => 10}]
		end
		
		def books
			@books.length
		end
		
		def lookup(isbn)
			{:book => 'BOOK1', :author => 'AUTHOR1', :isbn => isbn, :cost => 10}
		end
	end
end
