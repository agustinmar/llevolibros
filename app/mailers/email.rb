class Email < ActionMailer::Base
  default from: "Página Web Llevo Libros <info@llevolibros.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def micorreo(parametros)
    enviar_correo(parametros,"info@llevolibros.com","Contacto Llevo Libros")
  end

  def enviar(parametros)
    enviar_correo(parametros,parametros[:correo],"Llevo Libros - Gracias por contactarnos")
  end

  def correosolicitud(solicitud)
    mail to: "info@llevolibros.com", :subject => "Solicitud Llevo Libros"
  end

  def enviarsolicitud(parametros)
    enviar_solicitud(parametros,parametros[:correo],"Llevo Libros - Recibimos tu solicitud de libro")
  end

  private
    def enviar_correo(parametros,correo,asunto)
      @nombre = parametros[:nombre]
      @correo = parametros[:correo]
      @asunto = parametros[:asunto]
      @mensaje = parametros[:mensaje]

      mail to: correo, :subject => asunto 
    end

    def enviar_solicitud(parametros,correo,asunto)
      @titulo = parametros[:titulo]
      @autor = parametros[:autor]
      @informacion = parametros[:informacion]
      
      @correo = parametros[:correo]
      @telefono = parametros[:telefono]
      @nombre = parametros[:nombre]

      mail to: correo, :subject => asunto 
    end
end