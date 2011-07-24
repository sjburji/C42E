module Library
	class Outlet
		attr_reader :books
		def initialize
			@books = Array.new
			@books = [
         {:book => 'BOOK1', :author => 'AUTHOR1', :isbn => 'ISBN1', :cost => 10},
				 {:book => 'BOOK2', :author => 'AUTHOR2', :isbn => 'ISBN2', :cost => 20},
				 {:book => 'BOOK3', :author => 'AUTHOR3', :isbn => 'ISBN3', :cost => 30}]
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
			unless lookup(book[:isbn]).nil?
				return true
			end
			return false
		end
	end
end
