class Formato < ActiveRecord::Base
	has_many :libro

	def to_s
    	return self.nombre
	end
	def title
    	return self.to_s
	end
end
