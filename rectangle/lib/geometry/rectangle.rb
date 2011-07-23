module Geometry
	class Rectangle
		attr_reader :length, :breadth
		def self.build_square(side)
			new(side, side)
		end
		
		def self.build_rectangle(length, breadth)
			new(length, breadth)
		end

		def initialize(length = nil, breadth = nil)
			return false if length == nil || breadth == nil
			raise InvalidRectangleError if (length <= 0) || (breadth <= 0)
			@length = length
			@breadth = breadth
		end

		def perimeter
			2 * (@length + @breadth)						
		end

		def area
			@length * @breadth
		end

		def eql?(rec)			 
			rec.length == @length and rec.breadth == @breadth
		end
		
		def ==(rec)
			self.eql?(rec)
		end

	end
end
