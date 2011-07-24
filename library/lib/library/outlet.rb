module Library
	class Outlet
		def initialize
			@books = Array.new(3)
		end
		
		def books
			@books.length
		end
		
		def lookup(isbn)
			[:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10]
		end
	end
end
