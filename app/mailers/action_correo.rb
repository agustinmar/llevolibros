class ActionCorreo < ActionMailer::Base
  default from: "Llevo Libros <info@llevolibros.com>"

  def recepcion(solicitud)
    @solicitud = solicitud
  	mail :to => "agustin.mar@gmail.com", :subject => "Solicitan libro: "+@solicitud.titulo
  end

  #def misolicitud(solicitud)
  #  @solicitud = solicitud
  #  mail :to => "agustin.mar@gmail.com", :subject => "Solicitud Llevo Libros"
  #end

  #def enviarespuesta(solicitud)
  #  enviar_solicitud(parametros,parametros[:correo],"Llevo Libros - Recibimos tu solicitud de libro")
  #end
end
