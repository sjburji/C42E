class Rectangle
	def self.calcPerimeter(length, breadth)  
          2 * (length.to_i + breadth.to_i)
	end

	puts Rectangle.calcPerimeter(1, 2)
end
