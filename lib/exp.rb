require 'json'

class Object

	def exp 
		begin
			print "quick export to: "
			fname = gets
			puts ""
			f = open(fname, "w")
			f.write(JSON.generate(self))
			f.close
			"Success; #{fname} closed."
		rescue
			raise "error of some kind"
		end
	end
end
