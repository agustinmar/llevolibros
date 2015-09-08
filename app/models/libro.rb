class Libro < ActiveRecord::Base
	belongs_to :titulo
	belongs_to :editor
	belongs_to :pais
	belongs_to :idioma
	belongs_to :formato
	belongs_to :condicion
end
