#Michael Zazula
#CodeEval Challenge - Min. Path Challenge

def main

	require "Matrix"
	mat = Matrix[]
	
	File.open(ARGV[0]).each_line do |line|
		if line.to_s.chomp.length != 1
			addtomatrix(line,mat)

		end


	end

	puts mat

end



def addtomatrix(line, mat)
	array = line.split(",").map(&:to_i)
	mat = Matrix.rows(mat.to_a << array)


end



main 
