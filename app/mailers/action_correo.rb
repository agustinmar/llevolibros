class ActionCorreo < ActionMailer::Base
  default from: "info@llevolibros.com"

  def recepcion
  	@greeting = "Hola"
  	mail :to => "agustin.mar@gmail.com", :subject => "Nuestro primer correo"
  end
end
