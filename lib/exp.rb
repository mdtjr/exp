require 'json'

class Object
	exp_dir = nil
	def exp 
		begin
			if not exp_dir
				print "exp_dir: "
				exp_dir = gets
			end
		
			print "export filename: "
			fname = gets
			f = open("#{exp_dir}/#{fname.strip}", "w")
			f.write(JSON.generate(self))
			f.close
			puts "Success; \"#{fname}\" closed."
		rescue
			raise "error of some kind"
		end
	end
end
