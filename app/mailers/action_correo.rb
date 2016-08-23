class ActionCorreo < ActionMailer::Base
  default from: "Llevo Libros <info@llevolibros.com>"

  def recepcion(solicitud)
    @solicitud = solicitud
  	mail :to => "info@llevolibros.com", :subject => "Solicitan libro: "+@solicitud.titulo
  end

  def notificacion(nombre)
    @nombre = nombre
    mail :to => "info@llevolibros.com", :subject => "Llevo Libros - Recibimos tu solicitud de libro"
  end
end
