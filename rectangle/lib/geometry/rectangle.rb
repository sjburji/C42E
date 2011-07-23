module Rectangle
	class Perimeter
		def initialize(l, b)
			@length = l
			@breadth = b
		end

		def perimeter
			2 * (@length + @breadth)						
		end

		def area
			@length * @breadth
		end
	end
end
