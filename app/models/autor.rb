class Autor < ActiveRecord::Base
	has_and_belongs_to_many :titulo

	def to_s
    	return self.nombre
	end
	def title
    	return self.to_s
	end
end
