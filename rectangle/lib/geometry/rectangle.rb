module Geometry
	class Rectangle
		def self.build_square(side)
			new(side, side)
		end
		
		def self.build_rectangle(length, breadth)
			new(length, breadth)
		end

		def initialize(length, breadth)
			raise InvalidRectangleError if (length == 0) || (breadth == 0) 
			@length = length
			@breadth = breadth
		end

		def perimeter
			2 * (@length + @breadth)						
		end

		def area
			@length * @breadth
		end
	end
end
