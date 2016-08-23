class ActionCorreo < ActionMailer::Base
  default from: "Llevo Libros <info@llevolibros.com>"

  def recepcion(solicitud)
    @solicitud = solicitud
  	mail :to => "info@llevolibros.com", :subject => "Solicitan libro: "+@solicitud.titulo
  end

  def notificacion(correo,asunto)
    mail :to => correo, :subject => asunto
  end
end
