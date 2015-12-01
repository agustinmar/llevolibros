class Titulo < ActiveRecord::Base
	has_and_belongs_to_many :autor
	belongs_to :categoria
	has_many :libro

	def to_s
    	return self.nombre
	end
	def title
    	return self.to_s
	end
end
