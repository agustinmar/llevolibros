class ActionCorreo < ActionMailer::Base
  default from: "Llevo Libros <info@llevolibros.com>"

  def recepcion(solicitud)
    @solicitud = solicitud
  	mail :to => "agustin.mar@gmail.com", :subject => "Solicitan libro: "+@solicitud.titulo
  end

  def notificacion(solicitud)
    @solicitud = solicitud
    mail :to => "agustin.mar@gmail.com", :subject => "Llevo Libros - Recibimos tu solicitud de libro"
  end
end
