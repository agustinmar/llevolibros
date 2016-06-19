class Solicitud < ActiveRecord::Base
	validates :titulo, :presence => { :message => "es un campo requerido" }
	validates :telefono, :presence => { :message => "es un campo requerido" }, :numericality => { :message => "debe contener solo numeros" }, :length => { :is => 10, :message => "debe contener 10 digitos" }
	validates :nombre, :presence => { :message => "es un campo requerido" }
end
