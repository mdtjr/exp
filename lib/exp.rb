require 'json'

class Object

	def exp 
		begin
			if not EXP_DIR
				print "EXP_DIR: "
				EXP_DIR = gets
			end
		
			print "export filename: "
			fname = gets
			f = open("#{EXP_DIR}/#{fname.strip}", "w")
			f.write(JSON.generate(self))
			f.close
			puts "Success; \"#{fname}\" closed."
		rescue
			raise "error of some kind"
		end
	end
end
