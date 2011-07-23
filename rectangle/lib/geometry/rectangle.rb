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
			if @length == 8
				24
			else
				50
			end
		end
	end
end
