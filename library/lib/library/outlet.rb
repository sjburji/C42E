module Library
	class Outlet
		attr_reader :books
		def initialize
			@books = Array.new
			@books = [
         {:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10, :issued => 'N'},
				 {:book => 'BOOK2', :author => 'AUTHOR2', :isbn => 'ISBN2', :cost => 20, :issued => 'N'},
				 {:book => 'BOOK3', :author => 'AUTHOR3', :isbn => 'ISBN3', :cost => 30, :issued => 'N'}]
		end
		
		def books
			@books.length
		end
		
		def lookup(isbn)
			@books.each do |book|
				if book[:isbn] == isbn
					return book
				end
			end
			return nil
		end

		def issue(book)
			if !lookup(book[:isbn]).nil? and book[:issued] == 'N'        
          book[:issued] = 'Y'
  				return true      
			end
			return false
		end
	end
end
